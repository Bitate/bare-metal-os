#!/bin/sh

echo "Creating disk image..."
cd sys
dd if=/dev/zero of=disk.img count=128 bs=1048576 > /dev/null 2>&1
dd if=/dev/zero of=null.bin count=8 bs=1 > /dev/null 2>&1
cd ..

cd src/BareMetal-Monitor
./setup.sh
cd ../..

cd src/BareMetal-Demo
./setup.sh
cd ../..

./build.sh

cd sys
./bmfs disk.img format
cat multiboot.sys pure64.sys kernel.sys > boot.bin
cd ..

./install.sh monitor.bin

echo Done!
