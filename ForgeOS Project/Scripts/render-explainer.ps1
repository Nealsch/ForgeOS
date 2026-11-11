# render-explainer.ps1
# Renders the ForgeOS explainer diagram from its editable SVG source to PNG.
#
# Inputs:  ForgeOS Project/Assets/Diagrams/forgeos-explainer.svg (must exist)
# Output:  ForgeOS Project/Assets/Diagrams/forgeos-explainer.png (3200x2000, 2x scale)
# Exit:    0 on success; non-zero on failure (missing tool or source, wrong dimensions)
#
# Introduced by WI-005 (2026-11-11). Uses headless Chromium (Microsoft Edge).

$ErrorActionPreference = 'Stop'

$diagramsDir    = Join-Path $PSScriptRoot '..\Assets\Diagrams'
$svgPath        = Join-Path $diagramsDir 'forgeos-explainer.svg'
$pngPath        = Join-Path $diagramsDir 'forgeos-explainer.png'
$expectedWidth  = 3200
$expectedHeight = 2000

if (-not (Test-Path -LiteralPath $svgPath)) {
    throw "SVG source not found: $svgPath"
}

$edgeCandidates = @(
    (Join-Path $env:ProgramFiles 'Microsoft\Edge\Application\msedge.exe'),
    (Join-Path ${env:ProgramFiles(x86)} 'Microsoft\Edge\Application\msedge.exe')
)
$edge = $edgeCandidates | Where-Object { Test-Path -LiteralPath $_ } | Select-Object -First 1
if (-not $edge) {
    throw 'Microsoft Edge not found; install Edge or extend $edgeCandidates.'
}

$svgUri = ([System.Uri]$svgPath).AbsoluteUri

& $edge --headless --disable-gpu --hide-scrollbars --no-first-run --no-default-browser-check `
    --user-data-dir="$env:TEMP\edge-headless-render" `
    --force-device-scale-factor=2 --window-size=1600,1000 --virtual-time-budget=3000 `
    --screenshot="$pngPath" $svgUri 2>&1 | Out-Null

Start-Sleep -Seconds 2

if (-not (Test-Path -LiteralPath $pngPath)) {
    throw "Rendering failed: no output at $pngPath"
}

Add-Type -AssemblyName System.Drawing
$image = [System.Drawing.Image]::FromFile($pngPath)
try {
    if ($image.Width -ne $expectedWidth -or $image.Height -ne $expectedHeight) {
        throw "Unexpected dimensions: $($image.Width)x$($image.Height); expected ${expectedWidth}x${expectedHeight}."
    }
    Write-Host "PNG rendered: $($image.Width) x $($image.Height) px -> $pngPath"
}
finally {
    $image.Dispose()
}

exit 0
