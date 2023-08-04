#!/bin/bash

files=$(find "./origin" -type f)

for file in $files; do
  fontforge -script nerd-fonts/font-patcher -c -l --careful $file -out ./nerd-font
  fontforge -script nerd-fonts/font-patcher -c -l -s --careful $file -out ./mono
done
