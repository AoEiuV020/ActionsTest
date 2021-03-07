#!/bin/sh
mkdir -p build/output/
date > build/output/date
uname -a > build/output/uname
cat /etc/*rele* > build/output/release
mkdir build/output/sub
cp $0 build/output/sub/script
