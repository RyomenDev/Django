#!/bin/bash

# Run as administrator
sudo python3 -m pip install --upgrade pip setuptools
sudo python3 -m pip install --force-reinstall Django

# Verify installation
echo "Verifying installations..."
python3 --version
python3 -m pip --version
django-admin --version
