#! /bin/bash
# Simple script to find media files in the specified location

# Input handling, the default value is the root directory
input_buffer="$1"
if [[ $input_buffer == ""]]; then
  input_buffer="/"
fi

# Audio files
sudo find $input_buffer -name "*.mp3"
sudo find $input_buffer -name "*.wav"

# Video files
sudo find $input_buffer -name "*.mp4"
sudo find $input_buffer -name "*.mov"

# Pictures
sudo find $input_buffer -name "*.jpeg"
sudo find $input_buffer -name "*.png"
