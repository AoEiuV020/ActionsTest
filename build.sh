#!/bin/sh
mkdir -p build/output/
ls -l .. > build/output/list
date > build/output/date
uname -a > build/output/uname
cat /etc/*rele* > build/output/release
mkdir -p build/output/sub
cp $0 build/output/sub/script
