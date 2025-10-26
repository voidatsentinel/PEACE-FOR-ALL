#!/bin/bash
SCRIPT_DIR="$(dirname "${BASH_SOURCE[0]}")"

# Print shirt text file
echo -e "$(<"${SCRIPT_DIR}/shirt.txt")";