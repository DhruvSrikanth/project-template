#!/bin/bash

echo "What version of Python do you want to use?"
echo "The following versions are available (locally):"
pyenv versions
echo "Enter the version you want to use:"
echo "Enter -1 to chooose a new version to install."
echo "Enter nothing to exit setup."
read version
if [ -z "$version" ]; then
    echo "No version entered, exiting setup."
    exit 1
else
    if [ "$version" == "-1" ]; then
        echo "Here are the versions available:"
        pyenv install --list
        echo "Enter the version you want to install:"
        read version
        pyenv install $version
    fi
fi
pyenv local $version
echo "Python version: $(python --version)"