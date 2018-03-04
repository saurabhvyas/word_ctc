#!/bin/bash

# this script removes invalid utf-8 codes from a bunch of text files in input_dir

input_dir='/media/saurabh/New Volume2/hardik_dataset/final (another copy)'

output_dir='/media/saurabh/New Volume2/hardik_dataset/output'

# iterate over each file in input folder




for entry in "$input_dir"/*.txt
do
  echo "$entry"
  temp1=$(basename "$entry")
  temp5=${output_dir}/${temp1}
  iconv -f utf-8 -t utf-8 -c "$entry" > "$temp5"
  
  
  
  
  
  
done
