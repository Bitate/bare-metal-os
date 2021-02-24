#!/bin/sh

cd src
nasm -g monitor.asm -o ../bin/monitor.bin -l ../bin/monitor-debug.txt
