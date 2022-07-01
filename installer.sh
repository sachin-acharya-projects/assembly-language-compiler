
#!/bin/bash

RED='\033[0;31m'
CYAN='\033[0;36m'

FILENAME="assembly-language-compiler.zip"
FOLDER="assembly-language-compiler"

if [ -e "$FILENAME" ]
then
 echo "Required Files already exist. Deleteing existing file and Downloading new"
 rm $FILENAME
fi
echo -e $CYAN"Downloading Require Files from GitHub"
echo -e $CYAN"https://github.com/sachin-acharya-projects/assembly-language-compiler/raw/main/dist/assembly-language-compiler.zip"

wget "https://github.com/sachin-acharya-projects/assembly-language-compiler/raw/main/dist/assembly-language-compiler.zip"

if [ -d "$FOLDER" ]
then
    echo "Installation Folder Already Exist."
    echo "Enter [Y/N] to delete existing folder and installing new"
    read -p "[Y/N]: " query
    if [ ${query,,} = 'y' ]
    then
        rm -r $FOLDER
        echo -e $CYAN"Unzipping Files"
        unzip assembly-language-compiler.zip
        chmod +x assembly-language-compiler/compiler
    fi
else
    echo -e $CYAN"Unzipping Files"
    unzip assembly-language-compiler.zip
    chmod +x assembly-language-compiler/compiler
fi

rm assembly-language-compiler.zip

echo -e $CYAN"Installation is complete."

cd assembly-language-compiler

ALIAS_EX=$(cat ~/.bashrc | grep "alias assembly_compiler")

if [ "" = "$ALIAS_EX" ]
then
 echo "alias assembly_compiler='$PWD/compiler'" >> ~/.bashrc
 source ~/.bashrc
fi

echo -e $CYAN"Run assembly_compiler [filename] to compiler"
echo -e $CYAN"If assembly_compiler: command not found error occured, please run the following command or restart the computer."
echo -e $CYAN"source ~/.bashrc"
