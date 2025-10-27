#!/bin/bash
SCRIPT_DIR="$(dirname "${BASH_SOURCE[0]}")"

# Dependencies
"${SCRIPT_DIR}/dependencies.sh"
DEPENDENCIES_OK="${?}"
if [ "${DEPENDENCIES_OK}" -ne 0 ]; then :; exit "${DEPENDENCIES_OK}"; fi;

# Init
reset
tput civis
trap "tput cnorm; exit" SIGINT

# Peace for all
clear
echo -e "$(<"${SCRIPT_DIR}/peace for all.txt")"
echo -E ""
# Shirt
"${SCRIPT_DIR}/shirt/shirt_slow.sh"
echo -e "\n\033[001;030m\033[048;002;234;136;039m Press [Enter] to decode the t-shirt! \033[000m"
read

# Easter egg
# Decode
echo -e "\033[001;030m\033[048;002;234;136;039m Decoding... \033[000m"
sleep 2
"${SCRIPT_DIR}/payload/decode.sh"
echo -e "\n\033[001;030m\033[048;002;234;136;039m Decoded! Saving as code now...\033[000m\n"
# Msg
sleep 1
echo -e "\033[001;030m\033[048;002;244;241;234m-----------------------------------------------------------------------------------\n"
"${SCRIPT_DIR}/payload/easter_egg_code_slow.sh"
echo -e "-----------------------------------------------------------------------------------\033[000m"
echo -e "\n\033[001;030m\033[048;002;234;136;039m Saved to [${SCRIPT_DIR}/payload/easter_egg.sh] \033[000m"
echo -e "\n\033[001;030m\033[048;002;234;136;039m Press [Enter] to run the decoded t-shirt! \033[000m"
read
# Run
clear
"${SCRIPT_DIR}/payload/easter_egg.sh"

# PEACE FOR ALL