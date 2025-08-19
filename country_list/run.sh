#!/bin/sh
set -e

echo "Create country list romfs..."
./country-archive.py -c country.json

echo "Create country list title..."
makerom -rsf ../info.rsf -o 00000000.app

echo "Done"
