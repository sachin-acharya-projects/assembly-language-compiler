import os, sys, subprocess
from colorama import init, Fore; init(autoreset=True)

FILENAME = 'assembly-language-compiler.zip'
FOLDER = os.path.splitext(FILENAME)[0]

if os.path.exists(FILENAME):
    print(f"{Fore.GREEN}Required File Already Exist. Deleting the Old file and downloading new file")
    os.remove(FILENAME)
print(f"{Fore.LIGHTCYAN_EX}Downloading Required file from GitHub")
print(f"{Fore.LIGHTCYAN_EX}URL\nhttps://github.com/sachin-acharya-projects/assembly-language-compiler/raw/main/dist/assembly-language-compiler.zip")
os.system("wget https://github.com/sachin-acharya-projects/assembly-language-compiler/raw/main/dist/assembly-language-compiler.zip")

if os.path.exists(FOLDER):
    print(f"{Fore.LIGHTGREEN_EX}Installation Folder Alread Exist")
    print(f"{Fore.LIGHTGREEN_EX}Press ENTER to Delete Old Folder and Create New Folder with New Data")
    print(f"{Fore.LIGHTGREEN_EX}Enter N to continue as it it")
    query = input("")
    if not query.lower() == 'n':
        os.system(f"rm -r {FOLDER}")
print(f"{Fore.LIGHTCYAN_EX}Unzipping File")
os.system(f"unzip {FILENAME}")
os.system(f"chmod +x {FOLDER}/compiler")
os.system(f"rm {FILENAME}")
print(f"{Fore.LIGHTCYAN_EX}Creating Alias assembly_compiler for compiler")
os.chdir(FOLDER)

try:
    subprocess.check_output("cat ~/.bashrc | grep 'alias assembly_compiler'", shell=True)
except subprocess.CalledProcessError:
    os.system("echo \"alias assembly_compiler='$PWD/compiler'\" >> ~/.bashrc")
    os.system("source ~/.bashrc")

print(f"""{Fore.LIGHTMAGENTA_EX}Installation has been completed
Usage: assembly_compiler [filename].[asm]
If assembly_compiler: command not found has occured
Run source ~/.bashrc command manually
""")