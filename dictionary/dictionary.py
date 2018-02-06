#!/usr/bin/env python

# usage python dictionary.py 
# create plain text from concatenating dataset .txt files, then from plain text create dictionary.txt at same folder


# usage : python dictionary.py <path to folder containing .txt files>

from sys import argv
from pathlib import Path

import subprocess
from subprocess import Popen,PIPE

subprocess.check_output(['./concat.sh',str(argv[1])]) 

saved_txt_path=str(Path(argv[1]).parents[0])

with open(saved_txt_path + '/concatenated.txt', 'r') as myfile:
    data=myfile.read()

words = data.split()
print(len(words))

# remove duplicate items from the list

words=list(set(words))
print(len(words))


with open (saved_txt_path + '/words.txt', 'w') as fo:
   for word in words:
     fo.write(str(word) + '\n')
   fo.write(' '); # space word
