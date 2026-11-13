<#
.SYNOPSIS
Build Deliver Unpacked Cargo as a SnowPatcher package.
.EXAMPLE
.\Build.ps1 -GameRoot 'D:\OriginalSnowRunner' -SnowPatcherRoot 'D:\Projects\Snowpatcher' -OutputPath '.\artifacts\DeliverUnpackedCargo.zip'
#>
#Requires -Version 5.1
[CmdletBinding()]
param(
    [Parameter(Mandatory=$true)][string]$GameRoot,
    [Parameter(Mandatory=$true)][string]$OutputPath,
    [string]$SnowPatcherRoot = (Join-Path $PSScriptRoot '..\..\Snowpatcher')
)
$ErrorActionPreference = 'Stop'
try {
    $builder = Join-Path (Get-Item -LiteralPath $SnowPatcherRoot).FullName 'tools/New-ModPackage.ps1'
    if (-not (Test-Path -LiteralPath $builder -PathType Leaf)) { throw 'Select the SnowPatcher source folder with -SnowPatcherRoot.' }
    $LASTEXITCODE = 0
    & $builder $PSScriptRoot -GameRoot $GameRoot -OutputPath $OutputPath
    if ($LASTEXITCODE -ne 0) { throw 'Package generation failed.' }
} catch {
    Write-Error $_.Exception.Message -ErrorAction Continue
    exit 1
}
