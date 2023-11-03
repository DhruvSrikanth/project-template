#!/bin/bash

venv_name=".venv"
echo "Creating virtual environment..."
python3 -m venv $venv_name
echo "Virtual environment created: $venv_name"

echo "Activating virtual environment..."
source $venv_name/bin/activate
echo "Virtual environment activated: $venv_name"

echo "Updating pip..."
pip install --upgrade pip
echo "pip version: $(pip --version)"

echo "Setting up environment config..."
echo "source $venv_name/bin/activate" > .envrc
direnv allow
echo "Using python environment $(which python)"
