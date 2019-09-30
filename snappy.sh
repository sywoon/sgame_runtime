#!/bin/bash


cd snappy
make clean
make BUILDMODE=static CC="gcc -m32"
#make BUILDMODE=static CC="gcc -fPIC -Wall -g -O2"
cd ..