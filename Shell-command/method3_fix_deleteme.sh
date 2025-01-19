#!/bin/bash

# Remove .deleteme files (if any)
echo "Removing .deleteme files..."
find ~/.local/lib/python3*/site-packages -name "*.deleteme" -delete
find /usr/local/lib/python3*/dist-packages -name "*.deleteme" -delete

# Reinstall Django
python3 -m pip install --force-reinstall Django

# Verify installation
echo "Verifying installations..."
python3 --version
python3 -m pip --version
django-admin --version
