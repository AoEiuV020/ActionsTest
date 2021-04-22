#!/bin/sh
mkdir -p build/output/
set > build/output/set
export > build/output/export
ls -l .. > build/output/list
id > build/output/.id
date > build/output/date
uname -a > build/output/uname
cat /etc/os-release > build/output/release
mkdir -p build/output/sub
cp $0 build/output/sub/script
