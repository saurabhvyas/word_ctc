#!/bin/bash

for f in *.mp3; do sox  "${f%.*}.mp3" "${f%.*}.wav" channels 1 rate 16000   ; done

#sox "${title}.mp3" "${title}.wav" channels 1 rate 16000

# commands for text preprocessing

# for simple iterating of files through folder
for f in *.wav; do  echo "${f%.*}.wav"  ; done

# 1. remove non ASCII characters
#for f in *.txt; do  sed -i 's/[\d128-\d255]//g' "${f%.*}.txt"  ; done
for f in *.txt; do  perl -i.bak -pe 's/[^[:ascii:]]//g' "${f%.*}.txt"  ; done

#perl -i.bak -pe 's/[^[:ascii:]]//g'
#sed -i 's/[\d128-\d255]//g' FILENAME

# 2. remove unecessary characters
for f in *.txt; do sed 's/[,./?;:'"!$]//g'  "${f%.*}.txt"  ; done
#sed 's/[,./?;:'"!$]//g' file


