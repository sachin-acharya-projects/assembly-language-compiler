# assembly-language-compiler
This just an automation of Assembly Language Translation. This file only execute certain commands to translate assembly code.
________________________________________________________

#### Install
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
  
#### Comamnd Used
````
nasm -f elf64 assembly_program_name.asm 
ld -s -o assembly_program_name assembly_program_name.o
./assembly_program_name
````