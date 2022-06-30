from sys import argv, exit
from colorama import init, Fore; init(autoreset=True)
import os

argv = argv[1:]

argument = " ".join(argv)
filename = argument.split(".")[0]

if len(argv) == 0:
	sys.exit()

if not os.path.exists(filename):
	os.mkdir(filename)
print("")
print(f"{Fore.CYAN}1. Argument Received: {argument}")
print(f"{Fore.CYAN}2. Assembling The Program")
os.system(f"nasm -f elf64 {argument} -o {filename}/{filename}.o")
print(f"{Fore.CYAN}3. Linking the object file")
os.system(f"ld -s -o {filename}/{filename} {filename}/{filename}.o")
print(f"{Fore.CYAN}4. Output to {filename}")
print("")
os.system(f"./{filename}/{filename}")
