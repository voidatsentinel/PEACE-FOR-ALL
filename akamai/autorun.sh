#!/bin/bash
SCRIPT_DIR="$(dirname "${BASH_SOURCE[0]}")"

# Init
reset
tput civis
trap "tput cnorm; exit" SIGINT

# Peace for all
clear
echo -e "$(<"${SCRIPT_DIR}/peace for all.txt")"
echo -e "\n\033[001;030m\033[048;002;234;136;039m Press [Enter] to see the t-shirt! \033[000m"
read

# Shirt
"${SCRIPT_DIR}/shirt/shirt_slow.sh"

echo -e "\n\033[001;030m\033[048;002;234;136;039m Press [Enter] to decode the t-shirt! \033[000m"
read

# Easter egg
# Decode
echo -e "\033[001;030m\033[048;002;234;136;039m Decoding... \033[000m"
sleep 3
"${SCRIPT_DIR}/payload/decode.sh"
echo -e "\n\033[001;030m\033[048;002;234;136;039m Decoded! \033[000m\n"
# Msg
sleep 1
echo -e "\033[001;030m\033[048;002;234;136;039m Congratulations! You found the easter egg! ❤️     \033[000m"
echo -e "\033[001;030m\033[048;002;234;136;039m おめでとうございます！隠されたサプライズを見つけました！❤️ \033[000m"
sleep 2
echo -e "\n\033[001;030m\033[048;002;234;136;039m Press [Enter] to run the decoded t-shirt! \033[000m\n"
read
# Run
clear
"${SCRIPT_DIR}/payload/easter_egg.sh"

# PEACE FOR ALL