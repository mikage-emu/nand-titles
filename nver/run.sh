#!/bin/sh
set -e

echo "Create nver romfs..."
./../common/romfs.py -c romfs 00000000.app.romfs

echo "Create nver title..."
makerom -rsf ../info.rsf -o 00000000.app

echo "Done"
