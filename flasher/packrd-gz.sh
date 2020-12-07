#!/usr/bin/env bash

set -ve

cd "$(dirname "$0")"

cp -af init.sh rd/init
mkdir -p rd/{tmp,sys,srv,run,root,proc,opt,mnt,home,dev}
mkdir -p rd/var/{tmp,opt,mail,log,local,empty}

oldwd="$PWD"
cd rd
find . | cpio -o -H newc | pigz -9c > "$oldwd/rd-new.cpio"
