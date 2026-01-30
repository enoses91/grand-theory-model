<#
.SYNOPSIS
  Upgrade references to COR namespace tokens across markdown files, while avoiding edits
  inside Markdown code fences and inline-code spans.

.DESCRIPTION
  - Replaces Unicode Greek letters φ θ κ (when not LaTeX-escaped like \phi) with COR.PHI / COR.THETA / COR.KAPPA
  - Replaces whole-word CI and h with COR.CI and COR.H (but not when already prefixed by "COR.")
  - Skips edits inside:
      * fenced code blocks (``` ... ``` or ~~~ ... ~~~)
      * inline code spans (`like this`)
  - Tracks completed files in tools/cor_namespace_completed.txt (relative paths with forward slashes)

.NOTES
  This file defines functions (library-style). Use cor_namespace_upgrade_cli.ps1 to run from the shell.
#>

Set-StrictMode -Version Latest

function Get-RepoRoot {
  <#
    Resolve the git repo root using `git rev-parse --show-toplevel`.
    Falls back to current directory if git is unavailable.
  #>
  try {
    $root = (git rev-parse --show-toplevel 2>$null)
    if ($LASTEXITCODE -eq 0 -and $root) { return $root.Trim() }
  } catch {}
  return (Get-Location).Path
}

function Get-TrackingPath {
  param([Parameter(Mandatory=$true)][string]$RepoRoot)
  return (Join-Path $RepoRoot 'tools/cor_namespace_completed.txt')
}

function ConvertTo-RelativePath {
  param(
    [Parameter(Mandatory=$true)][string]$RepoRoot,
    [Parameter(Mandatory=$true)][string]$Path
  )
  $full = (Resolve-Path -LiteralPath $Path).Path
  $root = (Resolve-Path -LiteralPath $RepoRoot).Path.TrimEnd('\','/')
  if ($full.StartsWith($root, [System.StringComparison]::OrdinalIgnoreCase)) {
    $rel = $full.Substring($root.Length).TrimStart('\','/')
    return ($rel -replace '\\','/')
  }
  return ($full -replace '\\','/')
}

function Read-CompletedSet {
  param([Parameter(Mandatory=$true)][string]$TrackingFile)
  $set = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::OrdinalIgnoreCase)

  if (Test-Path -LiteralPath $TrackingFile) {
    Get-Content -LiteralPath $TrackingFile | ForEach-Object {
      $line = (($_ ?? '')).Trim()
      if ($line -and -not $line.StartsWith('#')) {
        $norm = ($line -replace '\\','/').Trim()
        if ($norm) { [void]$set.Add($norm) }
      }
    }
  }

  return $set
}

function Initialize-TrackingFile {
  param([Parameter(Mandatory=$true)][string]$TrackingFile)

  $dir = Split-Path -Parent $TrackingFile
  if (-not (Test-Path -LiteralPath $dir)) { New-Item -ItemType Directory -Path $dir | Out-Null }

  if (-not (Test-Path -LiteralPath $TrackingFile)) {
    @(
      '# COR namespace upgrade completed files',
      '# One relative path per line, relative to repo root (forward slashes).',
      '# Lines starting with # are comments.'
    ) | Set-Content -LiteralPath $TrackingFile -Encoding UTF8
  }
}

function Add-CompletedPath {
  param(
    [Parameter(Mandatory=$true)][string]$TrackingFile,
    [Parameter(Mandatory=$true)][string]$RelPath,
    [Parameter(Mandatory=$true)][System.Collections.Generic.HashSet[string]]$CompletedSet
  )

  $norm = ($RelPath -replace '\\','/').Trim()
  if (-not $norm) { return }

  if ($CompletedSet.Contains($norm)) { return }

  Initialize-TrackingFile -TrackingFile $TrackingFile
  Add-Content -LiteralPath $TrackingFile -Value $norm -Encoding UTF8
  [void]$CompletedSet.Add($norm)
}

function Edit-OutsideInlineCode {
  [CmdletBinding()]
  param(
    [Parameter(Mandatory)][string]$Text,
    [Parameter(Mandatory)][string]$Pattern,
    [Parameter(Mandatory)][string]$Replacement,
    [System.Text.RegularExpressions.RegexOptions]$Options = [System.Text.RegularExpressions.RegexOptions]::None
  )

  # Protect inline code spans (single-backtick) and LaTeX math spans so we DON'T replace inside them.
  # NOTE: This does NOT attempt to parse full Markdown/LaTeX; it is a pragmatic guardrail.

  # Initialize protection state per call (important!)
  $protectMap = @{}
  $counter = 0

  function New-ProtectToken {
    param([Parameter(Mandatory=$true)][string]$Value)

    $token = "@@PROTECT_$counter@@"
    $counter++
    $protectMap[$token] = $Value
    return $token
  }


  $t = $Text

  # 1) Protect inline code spans: `...`
  # Avoid double-wrapping: once inside backticks, we skip edits entirely via protection.
  $t = [regex]::Replace(
    $t,
    '(`[^`]*`)',
    { param($m) New-ProtectToken -Value $m.Value },
    [System.Text.RegularExpressions.RegexOptions]::Singleline
  )

  # 2) Protect LaTeX inline math: \( ... \)
  $t = [regex]::Replace(
    $t,
    '(\\\((?:.|\r|\n)*?\\\))',
    { param($m) New-ProtectToken -Value $m.Value },
    [System.Text.RegularExpressions.RegexOptions]::Singleline
  )

  # 3) Protect LaTeX display math: \[ ... \]
  $t = [regex]::Replace(
    $t,
    '(\\\[(?:.|\r|\n)*?\\\])',
    { param($m) New-ProtectToken -Value $m.Value },
    [System.Text.RegularExpressions.RegexOptions]::Singleline
  )

  # 4) (Optional but useful) Protect $$ ... $$ display math blocks
  $t = [regex]::Replace(
    $t,
    '(\$\$(?:.|\r|\n)*?\$\$)',
    { param($m) New-ProtectToken -Value $m.Value },
    [System.Text.RegularExpressions.RegexOptions]::Singleline
  )

  # 5) Protect $ ... $ only when it looks like real math (contains typical LaTeX syntax chars)
  $t = [regex]::Replace(
    $t,
    '(\$[^$\r\n]*\$)',
    {
      param($m)
      $inner = $m.Value.Trim('$')
      if ($inner -match '[\\^_{}]') { New-ProtectToken -Value $m.Value } else { $m.Value }
    },
    [System.Text.RegularExpressions.RegexOptions]::Singleline
  )

  # Now do the replacement on the unprotected remainder
  $regex = if ($Options -ne $null) { [regex]::new($Pattern, $Options) } else { [regex]::new($Pattern) }
  $t = $regex.Replace($t, $Replacement)

  # Restore protected segments
  foreach ($k in $protectMap.Keys) {
    $t = $t.Replace($k, $protectMap[$k])
  }

  return $t
}

function Edit-OutsideMarkdownCode {
  <#
    Apply a regex replace to Markdown text, skipping:
      - fenced code blocks (``` or ~~~)
      - inline code spans (backticks) on non-fenced lines
  #>
  param(
    [Parameter(Mandatory=$true)][string]$Text,
    [Parameter(Mandatory=$true)][string]$Pattern,
    [Parameter(Mandatory=$true)][string]$Replacement,
    [System.Text.RegularExpressions.RegexOptions]$Options = [System.Text.RegularExpressions.RegexOptions]::None
  )

  if ([string]::IsNullOrEmpty($Text)) { return $Text }

  $sb = New-Object System.Text.StringBuilder
  $lines = $Text -split "`n", -1

  $inFence = $false
  $fenceToken = $null

  foreach ($line in $lines) {
    # detect fenced code block start/end (``` or ~~~), allowing leading whitespace
    if ($line -match '^\s*(```|~~~)') {
      $tok = $Matches[1]
      if (-not $inFence) {
        $inFence = $true
        $fenceToken = $tok
      } elseif ($tok -eq $fenceToken) {
        $inFence = $false
        $fenceToken = $null
      }

      [void]$sb.Append($line)
      [void]$sb.Append("`n")
      continue
    }

    if ($inFence) {
      [void]$sb.Append($line)
      [void]$sb.Append("`n")
      continue
    }

    $edited = Edit-OutsideInlineCode -Text $line -Pattern $Pattern -Replacement $Replacement -Options $Options
    [void]$sb.Append($edited)
    [void]$sb.Append("`n")
  }

  # Remove the extra newline added at the end, to preserve original behavior for files without trailing newline.
  $result = $sb.ToString()
  if (-not $Text.EndsWith("`n")) { $result = $result.TrimEnd("`n") }
  return $result
}

function Show-PreviewChanges {
  param(
    [Parameter(Mandatory=$true)][string]$Original,
    [Parameter(Mandatory=$true)][string]$Updated,
    [int]$Context = 12,
    [int]$MaxLines = 220
  )

  if ($Original -eq $Updated) {
    Write-Host "No changes." -ForegroundColor DarkGray
    return
  }

  $o = $Original -split "`n", -1
  $u = $Updated  -split "`n", -1
  $max = [Math]::Max($o.Length, $u.Length)

  $first = -1
  $last  = -1
  for ($i=0; $i -lt $max; $i++) {
    $ol = if ($i -lt $o.Length) { $o[$i] } else { $null }
    $ul = if ($i -lt $u.Length) { $u[$i] } else { $null }
    if ($ol -ne $ul) { $first = $i; break }
  }
  for ($i=$max-1; $i -ge 0; $i--) {
    $ol = if ($i -lt $o.Length) { $o[$i] } else { $null }
    $ul = if ($i -lt $u.Length) { $u[$i] } else { $null }
    if ($ol -ne $ul) { $last = $i; break }
  }

  $start = [Math]::Max(0, $first - $Context)
  $end   = [Math]::Min($max - 1, $last + $Context)

  $sliceLen = ($end - $start + 1)
  if ($sliceLen -gt $MaxLines) {
    $end = $start + $MaxLines - 1
    Write-Host "(Preview truncated to $MaxLines lines; changes extend further.)" -ForegroundColor DarkYellow
  }

  Write-Host "Showing context lines $($start+1)-$($end+1) (1-indexed):" -ForegroundColor DarkGray

  for ($i=$start; $i -le $end; $i++) {
    $ol = if ($i -lt $o.Length) { $o[$i] } else { '' }
    $ul = if ($i -lt $u.Length) { $u[$i] } else { '' }

    if ($ol -eq $ul) {
      Write-Host ("  {0,5}  {1}" -f ($i+1), $ul) -ForegroundColor DarkGray
    } else {
      Write-Host ("- {0,5}  {1}" -f ($i+1), $ol) -ForegroundColor Red
      Write-Host ("+ {0,5}  {1}" -f ($i+1), $ul) -ForegroundColor Green
    }
  }
}

function Invoke-CorNamespaceUpgrade {
  [CmdletBinding()]
  param(
    [Parameter(Mandatory=$true)]
    [string]$Path,

    [switch]$InPlace,

    # Also replace whole words "phi|theta|kappa" (case-insensitive) outside markdown code
    [switch]$ReplaceWords,

    # If set, process even if tracking file says it's already completed
    [switch]$Force,

    # If set, do not read/write tracking file
    [switch]$NoTrack
  )

  $repoRoot = Get-RepoRoot
  $tracking = Get-TrackingPath -RepoRoot $repoRoot
  $completed = if ($NoTrack) { $null } else { Read-CompletedSet -TrackingFile $tracking }

  # Directory mode: recurse markdown files
  if (Test-Path -LiteralPath $Path -PathType Container) {
    $rootPath = (Resolve-Path -LiteralPath $Path).Path
    Get-ChildItem -LiteralPath $rootPath -Recurse -File -Filter '*.md' | ForEach-Object {
      Invoke-CorNamespaceUpgrade -Path $_.FullName -InPlace:$InPlace -ReplaceWords:$ReplaceWords -Force:$Force -NoTrack:$NoTrack
    }
    return
  }

  if (-not (Test-Path -LiteralPath $Path -PathType Leaf)) {
    throw "Path not found (file or directory): $Path"
  }

  $rel = ConvertTo-RelativePath -RepoRoot $repoRoot -Path $Path

  if (-not $NoTrack) {
    if (-not $Force -and $completed.Contains($rel)) {
      Write-Host "Skip (already completed): $rel" -ForegroundColor DarkGray
      return
    }
  }

  $original = Get-Content -Raw -LiteralPath $Path
  $text = $original

  # Replace Unicode Greek letters in prose (not LaTeX \phi):
  $text = Edit-OutsideInlineCode -Text $text -Pattern '(?<!\\)φ' -Replacement 'COR.PHI'
  $text = Edit-OutsideInlineCode -Text $text -Pattern '(?<!\\)θ' -Replacement 'COR.THETA'
  $text = Edit-OutsideInlineCode -Text $text -Pattern '(?<!\\)κ' -Replacement 'COR.KAPPA'

  # Replace standalone CI token in prose, but not if preceded by COR.
  # e.g., do not touch "COR.CI"
  $text = Edit-OutsideInlineCode -Text $text -Pattern '(?<!COR\.)\bCI\b' -Replacement 'COR.CI' -Options ([System.Text.RegularExpressions.RegexOptions]::None)

  # Replace standalone h token in prose, but not if preceded by COR.
  # NOTE: This is still potentially noisy in prose. Use your post-pass scan.
  $text = Edit-OutsideInlineCode -Text $text -Pattern '(?<!COR\.)\bh\b' -Replacement 'COR.H' -Options ([System.Text.RegularExpressions.RegexOptions]::None)

  if ($ReplaceWords) {
    $opts = [System.Text.RegularExpressions.RegexOptions]::IgnoreCase
    $text = Edit-OutsideMarkdownCode -Text $text -Pattern '\bphi\b'   -Replacement 'COR.PHI'   -Options $opts
    $text = Edit-OutsideMarkdownCode -Text $text -Pattern '\btheta\b' -Replacement 'COR.THETA' -Options $opts
    $text = Edit-OutsideMarkdownCode -Text $text -Pattern '\bkappa\b' -Replacement 'COR.KAPPA' -Options $opts
  }

  if (-not $InPlace) {
    Write-Host "Preview (no write): $rel" -ForegroundColor Cyan
    Show-PreviewChanges -Original $original -Updated $text
    return
  }

  if ($original -eq $text) {
    Write-Host "No changes: $rel" -ForegroundColor DarkGray
    if (-not $NoTrack) { Add-CompletedPath -TrackingFile $tracking -RelPath $rel -CompletedSet $completed }
    return
  }

  Set-Content -LiteralPath $Path -Value $text -Encoding UTF8
  Write-Host "Updated: $rel" -ForegroundColor Green

  if (-not $NoTrack) {
    Add-CompletedPath -TrackingFile $tracking -RelPath $rel -CompletedSet $completed
  }
}
