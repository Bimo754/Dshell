#!/bin/bash

RED="\033[1;31m"
PURPLE="\033[1;35m"
GREEN="\033[1;32m"
RESET="\033[0m"

# Check if the script is run as root
if [ "$EUID" -ne 0 ]; then
  echo -e "${PURPLE}[${RED}Warning${PURPLE}]${RESET} Please run this script with sudo."
  exit 1
fi

# Check if 'rcat' command exists
if ! command -v rcat &> /dev/null; then
    echo -e "${PURPLE}[${RED}Warning${PURPLE}]${RESET} rcat is not installed. Aborting..."
    exit 1
fi

# Define source and destination
SOURCE="./dshell"
DEST="/usr/local/bin/dshell"

# Check if the dshell file exists
if [ ! -f "$SOURCE" ]; then
    echo -e "${PURPLE}[${RED}Warning${PURPLE}]${RESET} Dshell file not found in current directory, re-clone the repository. Aborting..."
    exit 1
fi

# Copy dshell to /usr/local/bin
cp "$SOURCE" "$DEST"

# Ensure executable permission
chmod +x "$DEST"

echo -e "${PURPLE}[${GREEN}Info${PURPLE}]${RESET} Dshell has been installed successfully."
