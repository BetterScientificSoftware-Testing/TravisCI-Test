#!/usr/bin/env bash

if [ ! -d "Scripts" ]; then
  mkdir Scripts
fi

ls -ltr
cd Scripts

git clone https://github.com/betterscientificsoftware/Scripts.git

cd ..
ls -ltr



