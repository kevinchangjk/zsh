#! /usr/bin/python
import json
import textwrap
import subprocess
import random
import os

f = open('/home/khang/repos/zsh/quote/quotes.json','r')
data = json.load(f)
tput = str(subprocess.check_output(['tput','cols']))
width = int(tput.split("\'")[1].split("\\")[0]) - 4
c = random.randrange(1596)

wrapped = textwrap.wrap(data[c]['text'],width)
wrapped = ["  "+x for x in wrapped]
print(*wrapped,sep="\n")
print()
print("    -",data[c]['author'])
print()

f.close()
