#!/bin/bash

# Detect the distribution
if [ -x "$(command -v brew)" ]; then
    # Debian-based distribution (e.g., Ubuntu)
    sudo apt update
    sudo apt install -y package1 package2 package3
elif [ -x "$(command -v dnf)" ]; then
    # Fedora
    sudo dnf install -y package1 package2 package3
fi
