<!--suppress HtmlDeprecatedAttribute -->
<h1 align="center">Deliver Unpacked Cargo - SnowPatcher Edition</h1>

<p align="center">
  <img alt="Version 1.2.0" src="https://img.shields.io/badge/Version-1.2.0-458588?labelColor=ebdbb2&amp;style=flat">
  <img alt="SnowPatcher package" src="https://img.shields.io/badge/Package-SnowPatcher-512BD4?labelColor=ebdbb2&amp;style=flat">
  <a href="https://mod.io/g/snowrunner/m/deliver-unpacked-cargo"><img alt="mod.io" src="https://img.shields.io/badge/mod.io-Original%20mod-8F5BFF?labelColor=ebdbb2&amp;style=flat"></a>
</p>

<p align="center">Deliver Unpacked Cargo in SnowRunner using SnowPatcher.</p>

This is a conversion of [Deliver Unpacked Cargo 1.2 by nakedDave](https://mod.io/g/snowrunner/m/deliver-unpacked-cargo).

[Download](https://mod.io/g/snowrunner/m/deliver-unpacked-cargo-snowpatcher-edition) ·
[SnowPatcher](https://github.com/WalterWoshid/SnowPatcher/releases/latest)

Allows unpacked cargo at primary delivery zones. Packed deliveries still work.
Logs and water are excluded; objectives already allowing manual unloading keep
their settings. Active tasks and contracts retain their saved settings until
restarted. This package does not edit saves.

## Installation

Close SnowRunner, add the built ZIP to SnowPatcher, enable the mod and click Apply.
The source folder itself is not an installable package.

## Development

Requires PowerShell 5.1+, a SnowPatcher source checkout and known original game
files. Run from this folder:

```powershell
.\Build.ps1 -GameRoot 'D:\OriginalSnowRunner' -SnowPatcherRoot 'D:\Projects\Snowpatcher' -OutputPath '.\artifacts\DeliverUnpackedCargo.zip'
```

`snowpatcher.source.json` lists the affected map resources. `edits` contains the
property changes and their required old values. The builder generates the ZIP
and compatibility hashes. Changed required resources need review before rebuilding.
The ZIP includes these credits and configuration edits, without the original
patcher executable or game files.

The private maintenance workflow builds reviewed source against verified Steam
files and publishes compatible releases. Public checks need no game credentials.

## Credits

The original [Deliver Unpacked Cargo 1.2](https://mod.io/g/snowrunner/m/deliver-unpacked-cargo)
and its gameplay changes are by **nakedDave**. The original release uses
[SnowPakTool by chase](https://github.com/chase-000/SnowRunnerTools).
**WalterWoshid** prepared this SnowPatcher conversion, packaged as version 1.2.0.

## Show your support

Give a ⭐ if this project helped you!
