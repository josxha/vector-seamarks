#!/usr/bin/env bash

# Generate sprites, install spreet with `brew install flother/taps/spreet`

spreet --unique --recursive svg seamarks-sprites
spreet --unique --recursive --retina svg seamarks-sprites@2x