#!/bin/bash
SCRIPT_DIR="$(dirname "${BASH_SOURCE[0]}")"

while IFS= read -r line; do
    echo -e "$line"
    sleep .02;
done < "${SCRIPT_DIR}/shirt.txt"
printf "\033[000m";