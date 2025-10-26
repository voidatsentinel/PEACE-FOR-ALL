#!/bin/bash
SCRIPT_DIR="$(dirname "${BASH_SOURCE[0]}")"
# Init
reset
tput civis
trap "tput cnorm; exit" SIGINT
# Loop
while [ 1 ]; do :; clear && "${SCRIPT_DIR}/shirt.sh"; sleep 1; done;