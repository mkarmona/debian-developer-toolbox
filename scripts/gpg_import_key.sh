#!/bin/bash

if [ $# -eq 2 ]
then
    echo "importing key into dedebox.gpg: $1"
    gpg --no-default-keyring --keyring debian-developer-toolbox_0.1/etc/apt/trusted.gpg.d/dedebox.gpg --import $1
else
    echo "$0 <key-to-import.key>"
fi
