#!/bin/sh

BOLD_RED="\033[1;31m"
RED="\033[0;31m"
RESET="\033[0m"
BOLD_UNDERLINE="\033[1;4m"

echo -e "${RED}[${RESET}${BOLD_RED}!${RESET}${RED}]${RESET}: ${BOLD_UNDERLINE}Use the 'stop' command to stop the server, do not do ^C${RESET}"

java -Xmx5120M -Xms5120M -jar server.jar nogui
