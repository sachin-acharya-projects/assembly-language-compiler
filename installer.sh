#!/bin/bash

RED='\033[0;31m'
CYAN='\033[0;36m'

echo -e $CYAN"Downloading Require Files from GitHub"
echo -e $CYAN"https://github.com/sachin-acharya-projects/assembly-language-compiler/raw/main/dist/assembly-language-compiler.zip"

wget "https://github.com/sachin-acharya-projects/assembly-language-compiler/raw/main/dist/assembly-language-compiler.zip"

echo -e $CYAN"Unzipping Files"
unzip assembly-language-compiler.zip

chmod +x assembly-language-compiler/compiler
rm assembly-language-compiler.zip

echo -e $CYAN"Installation is complete."
cd assembly-language-compiler
echo "export PATH=$PATH:'$PWD'" >> ~/.bashrc
