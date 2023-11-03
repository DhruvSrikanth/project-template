#!/bin/bash

path="requirements.txt"
echo "Installing requirements from $path..."
pip3 install -r $path
echo "Requirements installed from $path"
