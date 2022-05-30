#!/bin/bash

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    if [[ "$(command -v apt)" != "" ]]; then
        apt install unace unrar zip unzip p7zip-full p7zip-rar sharutils uudeview mpack arj cabextract device-tree-compiler liblzma-dev python3-pip brotli liblz4-tool axel gawk aria2 detox cpio rename liblz4-dev -y
    elif [[ "$(command -v pacman)" != "" ]]; then
         pacman -Sy --noconfirm unace unrar zip unzip p7zip sharutils uudeview arj cabextract file-roller dtc python-pip brotli axel gawk aria2 detox cpio
    fi
    PIP=pip3
elif [[ "$OSTYPE" == "darwin"* ]]; then
    brew install protobuf xz brotli lz4 aria2 detox coreutils p7zip gawk
    PIP=pip
fi

"$PIP" install backports.lzma extract-dtb protobuf pycrypto docopt zstandard twrpdtgen
