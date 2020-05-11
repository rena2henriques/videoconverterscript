#!/bin/bash

# Script to automate the process of converting all videos of a directory to a different format using ffmpeg

inputvideoformat=$1
outputvideoformat=$2

for filename in *.$inputvideoformat; do
    echo "Starting conversion of the file: "${filename%.*}" to "$outputvideoformat

    ffmpeg -i $filename -c:v libx264 -crf 20 -preset:v medium ${filename%.*}"."$outputvideoformat
done

echo "Script finished!"
