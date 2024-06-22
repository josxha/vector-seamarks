#!/usr/bin/env bash

# Copy all SVG files to a temporary flat directory
mkdir -p tmp/svg
find svg -type f -exec cp {} tmp/svg/ \;

# Generate sprites, install spreet with `brew install flother/taps/spreet`
spreet --unique --recursive tmp/svg seamarks-sprites
spreet --unique --recursive --retina tmp/svg seamarks-sprites@2x

# Add the sdf field when the sprite name ends with _sdf
temp_file=$(mktemp)
jq 'walk(if type == "object" then with_entries(
    if (.key | endswith("_sdf")) then .value |= . + {"sdf": true} else . end
) else . end)' "seamarks-sprites.json" > $temp_file
mv $temp_file "seamarks-sprites.json"

jq 'walk(if type == "object" then with_entries(
    if (.key | endswith("_sdf")) then .value |= . + {"sdf": true} else . end
) else . end)' "seamarks-sprites@2x.json" > $temp_file
mv $temp_file "seamarks-sprites@2x.json"