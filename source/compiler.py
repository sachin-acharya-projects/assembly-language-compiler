from sys import exit, argv
from colorama import init, Fore; init(autoreset=True) # Initialize colorama
import os

argv = argv[1:]
if len(argv) == 0:
    exit()
    
BASE_PATH = os.path.dirname(os.path.abspath(__file__))
path_ = " ".join(argv)

filename = os.path.splitext(os.path.basename(path_))[0]

if os.sep in path_:
    save_location = os.path.dirname(path_)
else:
    save_location = filename
    
# Checking if required package has been installed or not if not then install it
# Check only for the first time
log_location = os.path.join(BASE_PATH, "log.txt")
if not os.path.exists(log_location):
    with open(log_location, "w") as log:
        log.close()
    print("{}Checking for required packages".format(Fore.CYAN))
    os.system("sudo " + os.path.join(BASE_PATH, "package_install.sh"))

if not os.path.exists(save_location):
    os.mkdir(save_location)

print("")
print(f"{Fore.CYAN}1. Translating Program {path_}")

print(f"{Fore.CYAN}2. Assembling The Program")
os.system(f"nasm -f elf64 {path_} -o {save_location}/{filename}.o")

print(f"{Fore.CYAN}3. Linking the object file")
os.system(f"ld -s -o {save_location}/{filename} {save_location}/{filename}.o")

print(f"{Fore.CYAN}4. Output to {save_location}")
print("")

os.system("chmod +x {}/{}".format(save_location, filename))

print("{}Output".format(Fore.CYAN))
os.system(f"{save_location}/{filename}")
