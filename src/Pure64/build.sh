#!/bin/bash

mkdir -p bin

cd src

nasm -g pure64.asm -o ../bin/pure64.sys

cd bootsectors

nasm -g mbr.asm -o ../../bin/mbr.sys
nasm -g pxestart.asm -o ../../bin/pxestart.sys
nasm -g multiboot.asm -o ../../bin/multiboot.sys
nasm -g multiboot2.asm -o ../../bin/multiboot2.sys

cd ../..
