#!/usr/bin/env bash

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


