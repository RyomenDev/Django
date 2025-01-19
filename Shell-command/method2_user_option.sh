#!/bin/bash

# Install packages for the current user
python3 -m pip install --upgrade pip setuptools --user
python3 -m pip install Django --user

# Verify installation
echo "Verifying installations..."
python3 --version
python3 -m pip --version
django-admin --version
