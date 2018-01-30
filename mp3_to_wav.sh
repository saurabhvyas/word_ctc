#!/bin/bash

for f in *.mp3; do sox  "${f%.*}.mp3" "${f%.*}.wav" channels 1 rate 16000   ; done

#sox "${title}.mp3" "${title}.wav" channels 1 rate 16000


