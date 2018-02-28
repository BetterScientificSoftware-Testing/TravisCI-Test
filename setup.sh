#!/usr/bin/env bash

if [ "$TRAVIS_PULL_REQUEST" = "true" ]; then
  echo "I AM A PULL REQUEST!"
else
  echo "I AM NOT A PULL REQUEST!"
fi

if [ ! -d "Scripts" ]; then
  mkdir Scripts
fi
# ls -ltr

cd Scripts

if [ ! =d "Scripts" ]; then
  echo "----[ Clone Scripts ]----"
  git clone https://github.com/betterscientificsoftware/Scripts.git
else
  echo "----[ Update Scripts ]----"
  cd Scripts
  git pull
  cd ..
fi

# ls -ltr

