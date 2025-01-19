#!/bin/bash

# Notify about manual steps
echo "This script will guide you through Python reinstallation."

# Check current Python version
echo "Current Python version:"
python3 --version

# Suggest steps
echo "1. Uninstall Python manually from your system."
echo "2. Remove the installation folder (e.g., /usr/local/lib/python3.x)."
echo "3. Download the latest version from https://www.python.org."
echo "4. Reinstall Python and verify below steps."

# Verify Python after reinstallation
python3 --version
python3 -m pip --version
django-admin --version
