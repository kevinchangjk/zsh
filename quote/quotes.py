#! /usr/bin/python
import json
import textwrap
import subprocess
import random

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

f = open('/home/khang/repos/zsh/quote/quotes.json','r')
data = json.load(f)
f.close()
tput = str(subprocess.check_output(['tput','cols']))
width = int(tput.split("\'")[1].split("\\")[0]) - 4
c = random.randrange(1596)

wrapped = textwrap.wrap(data[c]['text'],width)
wrapped = ["  "+x for x in wrapped]
print(bcolors.OKGREEN,end='')
print(*wrapped,sep="\n")
print(bcolors.ENDC,end='')
print()
print("    -",data[c]['author'])
print()
