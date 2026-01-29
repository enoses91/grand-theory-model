param(
  [Parameter(Mandatory=$true)][string]$Path,
  [switch]$InPlace,
  [switch]$Force,
  [switch]$ReplaceWords,
  [switch]$NoTrack
)

. (Join-Path $PSScriptRoot "cor_namespace_upgrade.ps1")

Invoke-CorNamespaceUpgrade -Path $Path -InPlace:$InPlace -Force:$Force -ReplaceWords:$ReplaceWords -NoTrack:$NoTrack