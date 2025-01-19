#!/bin/bash

# Create and activate a virtual environment
python3 -m venv myenv
source myenv/bin/activate

# Install Django
pip install --upgrade pip setuptools
pip install Django

# Verify installation
echo "Verifying installations..."
python --version
pip --version
django-admin --version

# Deactivate virtual environment
deactivate
