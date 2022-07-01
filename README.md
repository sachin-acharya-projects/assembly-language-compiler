# assembly-language-compiler
This just an automation of Assembly Language Translation. This file only execute certain commands to translate assembly code.
________________________________________________________

#### Install
**Installation with Bash Script**
(_Choose one of the following installer_)
1. Bash Script

    ````
    wget https://github.com/sachin-acharya-projects/assembly-language-compiler/raw/main/installer.sh
    ````
2. Binary Installer

    ````
    wget https://github.com/sachin-acharya-projects/assembly-language-compiler/raw/main/installer
    ````
    
  ````
  chmod +x installer.sh
  ````
  ````
  ./installer.sh
  ````
  
**Cloning from Github Repository**
1. Clone Github Repository

    ````
    https://github.com/sachin-acharya-projects/assembly-language-compiler.git
    ````

2. Change Directory
  
    ````
    cd assembly-language-compiler
    ````

3. Change Mode
  
    ````
    chmod +x compiler
    ````

4. Execute File
  
    ````
    ./compiler [assembly_program] # Output to the folder as program name
    ````
5. Package Installation
  
    ````
    sudo apt install as31 nasm  
    ````
#### Comamnd Used
````
nasm -f elf64 assembly_program_name.asm 
ld -s -o assembly_program_name assembly_program_name.o
./assembly_program_name
````
