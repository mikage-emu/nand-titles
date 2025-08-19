System files for 3DS emulation
==============

This repository provides open-source replacements for some of the system files
required for 3DS emulation. [Mikage](https://github.com/mikage-emu/mikage-dev/)
uses this to set up a bootable filesystem tree ("NAND").

Originally based on https://github.com/B3n30/citra_system_archives.

## Building

This project is packaged in the `emulator_nand_files` recipe in
[conan-3ds](https://github.com/mikage-emu/conan-3ds). Alternatively, manual
building requires Python 3, pypng, Python Image Library, and makerom.
