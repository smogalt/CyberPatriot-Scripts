#! /bin/bash

# Simple script to find media files in the specified location

# Audio files
sudo find $1 -name "*.mp3"
sudo find $1 -name "*.wav"

# Video files
sudo find $1 -name "*.mp4"
sudo find $1 -name "*.mov"

# Pictures
sudo find $1 -name "*.jpeg"
sudo find $1 -name "*.png"
