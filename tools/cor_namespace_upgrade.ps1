# tools/cor_namespace_upgrade.ps1
<#
COR Namespace Upgrade Helper (hardened)

Goals:
- Replace select "free-floating" metric/state mentions with backticked COR.* tokens in prose.
- Avoid:
  1) replacing inside existing COR.* tokens
  2) double-wrapping backticks
  3) replacing inside inline-code spans delimited by backticks
  4) polluting math/LaTeX when possible (still do a post-pass scan for COR.* on equation-like lines)

Adds:
- Tracking file: tools/cor_namespace_completed.txt
  - One file path per line (relative to repo root, Windows style or posix ok).
  - Script auto-skips files already listed unless -Force is used.
  - When -InPlace succeeds, it appends the normalized relative path.

Usage (from repo root):
  . .\tools\cor_namespace_upgrade.ps1
  Invoke-CorNamespaceUpgrade -Path .\OCF\OCF.OPERATOR.PI_FIELD.md -InPlace

Batch:
  . .\tools\cor_namespace_upgrade.ps1
  Get-ChildItem .\OCF -Filter "OCF.*.md" | % { Invoke-CorNamespaceUpgrade -Path $_.FullName -InPlace }

Notes:
- This script ONLY skips replacements inside inline-code spans (single backtick runs).
  It does not fully parse fenced code blocks. If you need that, we can add it.
- We deliberately do NOT auto-replace E or X (too collision-prone).
#>

Set-StrictMode -Version Latest

function Get-RepoRoot {
  # Assumes you run from repo root; fallback to current location
  return (Get-Location).Path
}

function Get-TrackingPath {
  param([string]$RepoRoot)
  return (Join-Path $RepoRoot "tools\cor_namespace_completed.txt")
}

function ConvertTo-RelativePath {
  param(
    [Parameter(Mandatory=$true)][string]$RepoRoot,
    [Parameter(Mandatory=$true)][string]$Path
  )
  $full = (Resolve-Path -LiteralPath $Path).Path
  $root = (Resolve-Path -LiteralPath $RepoRoot).Path.TrimEnd('\')
  if ($full.StartsWith($root, [System.StringComparison]::OrdinalIgnoreCase)) {
    $rel = $full.Substring($root.Length).TrimStart('\')
    # normalize slashes to backslash for consistency on Windows
    return ($rel -replace '/', '\')
  }
  # If outside root, just return full path
  return $full
}

function Read-CompletedSet {
  param([Parameter(Mandatory=$true)][string]$TrackingFile)
  $set = [System.Collections.Generic.HashSet[string]]::new([System.StringComparer]::OrdinalIgnoreCase)
  if (Test-Path -LiteralPath $TrackingFile) {
    Get-Content -LiteralPath $TrackingFile | ForEach-Object {
      $line = ($_ ?? "").Trim()
      if ($line -and -not $line.StartsWith("#")) { [void]$set.Add($line) }
    }
  }
  return $set
}

function Add-CompletedPath {
  param(
    [Parameter(Mandatory=$true)][string]$TrackingFile,
    [Parameter(Mandatory=$true)][string]$RelPath
  )
  # Ensure tools dir exists
  $dir = Split-Path -Parent $TrackingFile
  if (-not (Test-Path -LiteralPath $dir)) { New-Item -ItemType Directory -Path $dir | Out-Null }

  # Create file if missing
  if (-not (Test-Path -LiteralPath $TrackingFile)) {
    @(
      "# COR namespace upgrade completed files",
      "# One relative path per line, relative to repo root.",
      "# Lines starting with # are comments."
    ) | Set-Content -LiteralPath $TrackingFile -Encoding UTF8
  }

  Add-Content -LiteralPath $TrackingFile -Value $RelPath -Encoding UTF8
}

function Edit-OutsideInlineCode {
  <#
    Apply a regex replace only outside inline-code spans delimited by backticks.
    We split on runs of backticks and treat odd segments as inline code.

    Limitations:
    - Does not fully parse nested/multi-backtick inline code perfectly, but works well
      for standard markdown where inline code uses single backticks.
  #>
  param(
    [Parameter(Mandatory=$true)][string]$Text,
    [Parameter(Mandatory=$true)][string]$Pattern,
    [Parameter(Mandatory=$true)][string]$Replacement,
    [System.Text.RegularExpressions.RegexOptions]$Options = [System.Text.RegularExpressions.RegexOptions]::None
  )

  # Split preserving backtick delimiters
  $parts = [System.Text.RegularExpressions.Regex]::Split($Text, "(`+)")
  $out = New-Object System.Text.StringBuilder

  $inCode = $false
  for ($i=0; $i -lt $parts.Length; $i++) {
    $p = $parts[$i]
    if ($p -match "^`+$") {
      # Toggle inline-code state on each delimiter run
      $inCode = -not $inCode
      [void]$out.Append($p)
      continue
    }

    if ($inCode) {
      [void]$out.Append($p)
    } else {
      $re = [System.Text.RegularExpressions.Regex]::new($Pattern, $Options)
      [void]$out.Append($re.Replace($p, $Replacement))
    }
  }

  return $out.ToString()
}

function Invoke-CorNamespaceUpgrade {
  [CmdletBinding()]
  param(
    [Parameter(Mandatory=$true)]
    [string]$Path,

    [switch]$InPlace,

    # Also replace whole words "phi|theta|kappa" (case-insensitive) outside inline code
    [switch]$ReplaceWords,

    # If set, process even if tracking file says it's already completed
    [switch]$Force,

    # If set, do not read/write tracking file
    [switch]$NoTrack
  )

  if (-not (Test-Path -LiteralPath $Path)) {
    throw "File not found: $Path"
  }

  $repoRoot = Get-RepoRoot
  $tracking = Get-TrackingPath -RepoRoot $repoRoot
  $rel = ConvertTo-RelativePath -RepoRoot $repoRoot -Path $Path

  if (-not $NoTrack) {
    $completed = Read-CompletedSet -TrackingFile $tracking
    if (-not $Force -and $completed.Contains($rel)) {
      Write-Host "Skip (already completed): $rel" -ForegroundColor DarkGray
      return
    }
  }

  $text = Get-Content -Raw -LiteralPath $Path

  # === Hardened replacement rules ===
  # Guardrails:
  # - Never replace inside inline-code spans (backticked runs)
  # - Never replace if token is already part of COR.* (negative lookbehind for 'COR.')
  # - Never insert backticks around things already backticked because we avoid inline-code spans entirely
  #   (If someone wrote COR.PHI without backticks in prose, we DO NOT auto-backtick it here.)
  #
  # Replace Unicode Greek letters in prose (not LaTeX \phi):
  $text = Edit-OutsideInlineCode -Text $text -Pattern '(?<!\\)φ' -Replacement '`COR.PHI`'
  $text = Edit-OutsideInlineCode -Text $text -Pattern '(?<!\\)θ' -Replacement '`COR.THETA`'
  $text = Edit-OutsideInlineCode -Text $text -Pattern '(?<!\\)κ' -Replacement '`COR.KAPPA`'

  # Replace standalone CI token in prose, but not if preceded by COR.
  # e.g., do not touch "COR.CI"
  $text = Edit-OutsideInlineCode -Text $text -Pattern '(?<!COR\.)\bCI\b' -Replacement '`COR.CI`' -Options ([System.Text.RegularExpressions.RegexOptions]::None)

  # Replace standalone h token in prose, but not if preceded by COR.
  # NOTE: This is still potentially noisy in prose. Use your post-pass scan.
  $text = Edit-OutsideInlineCode -Text $text -Pattern '(?<!COR\.)\bh\b' -Replacement '`COR.H`' -Options ([System.Text.RegularExpressions.RegexOptions]::None)

  # Optional spelled-out words (outside inline-code), whole-word, case-insensitive.
  if ($ReplaceWords) {
    $text = Edit-OutsideInlineCode -Text $text -Pattern '\bphi\b'   -Replacement '`COR.PHI`'   -Options ([System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
    $text = Edit-OutsideInlineCode -Text $text -Pattern '\btheta\b' -Replacement '`COR.THETA`' -Options ([System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
    $text = Edit-OutsideInlineCode -Text $text -Pattern '\bkappa\b' -Replacement '`COR.KAPPA`' -Options ([System.Text.RegularExpressions.RegexOptions]::IgnoreCase)
  }

  if ($InPlace) {
    Set-Content -LiteralPath $Path -Value $text -Encoding UTF8
    Write-Host "Updated: $rel" -ForegroundColor Green

    if (-not $NoTrack) {
      Add-CompletedPath -TrackingFile $tracking -RelPath $rel
      Write-Host "Tracked:  $rel" -ForegroundColor DarkGray
    }
  } else {
    Write-Host "Preview (no write): $rel" -ForegroundColor Cyan
    $text
  }
}