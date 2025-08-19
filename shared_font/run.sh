#!/bin/sh
set -e

echo "Create the images..."
./create_png.py

echo "Copy reserved unicode chars..."
cp reserved_unicode_chars/* .

echo "Create the bcfnt file..."
./bcfnt.py -cf code.bcfnt

echo "Convert the bcfnt file into a romfs..."
mkdir romfs
./../common/lz_compress.py code.bcfnt romfs/cbf_std.bcfnt.lz

echo "Create shared font main title..."
makerom -rsf ../info.rsf -o 00000000.app

echo "Create shared font CHN/KOR/TWN titles..."
mv romfs/*.bcfnt.lz romfs/cbf_zh-Hans-CN.bcfnt.lz
makerom -rsf ../info.rsf -o 00000000_chn.app
mv romfs/*.bcfnt.lz romfs/cbf_ko-Hang-KR.bcfnt.lz
makerom -rsf ../info.rsf -o 00000000_kor.app
mv romfs/*.bcfnt.lz romfs/cbf_zh-Hant-TW.bcfnt.lz
makerom -rsf ../info.rsf -o 00000000_twn.app

echo "Cleanups..."
rm -rf romfs
rm code.bcfnt
rm code_sheet*

echo "Done"
