#!/usr/bin/env bash


# Normal Colors
NC="\033[0m"              # Color Reset
Black="\033[0;30m"        # Black
Red=`echo "\033[0;31m"`   # Red
Green="\033[0;32m"        # Green
Brown="\033[0;33m"        # Brown
Blue="\033[0;34m"         # Blue
Purple="\033[0;35m"       # Purple
Cyan="\033[0;36m"         # Cyan
LtGray="\033[0;37m"       # LtGray
Orange="\033[0;1m"        # Orange


echo -e "${Red}-----[ ${Cyan}SETUP${NC} ${Red}]-----------------------------${NC}"

# TravisCI check if this is a PR or not.
if [ "$TRAVIS_PULL_REQUEST" = "true" ]; then
  echo "I AM A PULL REQUEST!"
else
  echo "I AM NOT A PULL REQUEST!"
fi

# If the Scripts dir doesn't exist, make it
if [ ! -d "Scripts" ]; then
  echo "Creating Scripts directory"
  mkdir Scripts
fi
cd Scripts

# Clone Scripts repository (if needed, or update it)
if [ ! -d "Scripts" ]; then
  echo "----[ Clone Scripts ]----"
  git clone https://github.com/betterscientificsoftware/Scripts.git
else
  echo "----[ Update Scripts ]----"
  cd Scripts
  git pull
  cd ..
fi


