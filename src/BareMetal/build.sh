#!/bin/bash

mkdir -p bin

cd src
nasm -g kernel.asm -o ../bin/kernel.sys -l ../bin/kernel-debug.txt
cd ..
