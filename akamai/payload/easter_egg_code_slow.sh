#!/bin/bash
SCRIPT_DIR="$(dirname "${BASH_SOURCE[0]}")"

while IFS= read -r line; do
    echo -E "$line"
    sleep .01;
done < "${SCRIPT_DIR}/easter_egg.sh"