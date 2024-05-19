#!/usr/bin/env bash

# install tools
cargo install spreet

# get resources
mkdir tmp
git clone https://github.com/OpenNauticalChart/josm tmp/josm
#mkdir tmp/sprites-input

# generate sprites
mkdir build
spreet.exe --recursive --minify-index-file tmp/svg-all build/seamarks
spreet.exe --recursive --minify-index-file --sdf tmp/svg-all build/seamarks-sdf