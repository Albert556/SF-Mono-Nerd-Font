#!/bin/bash

path=$1

files=$(find "$1" -type f)

for file in $files; do
	fontforge -script nerd-fonts/font-patcher --complete --adjust-line-height --careful $file -out $2
	fontforge -script nerd-fonts/font-patcher --complete --adjust-line-height --careful $file -out $2/single
done
