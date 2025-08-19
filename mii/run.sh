#!/bin/sh

echo "Create mii resource romfs..."
./mii.py -c custom

echo "Create mii resource title..."
makerom -rsf ../info.rsf -o 00000000.app

echo "Done"
