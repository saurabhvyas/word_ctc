#!/bin/bash

# simple shell script that concatenates all .txt files in specified folder to a single .txt file 
# usage concat.sh <path to folder having text files> 

cd $1
#cat *.txt >> ../"concatenated.txt"
awk 'FNR==1{print ""}1' *.txt > ../"concatenated.txt"

