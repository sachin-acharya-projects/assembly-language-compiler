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
echo "alias assembly_compiler='$PWD/compiler'" >> ~/.bashrc
source ~/.bashrc
echo -e $CYAN"Run assembly_compiler [filename] to compiler"
echo -e $CYAN"If assembly_compiler: command not found error occured, please run the following command or restart the computer."
echo -e $CYAN"source ~/.bashrc"
