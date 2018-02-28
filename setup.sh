#!/usr/bin/env bash

if [ ! -d "Scripts" ]; then
  mkdir Scripts
fi
ls -ltr

cd Scripts

if [ ! =d "Scripts" ]; then
  git clone https://github.com/betterscientificsoftware/Scripts.git
else
  cd Scripts
  git pull
  cd ..
fi

ls -ltr

