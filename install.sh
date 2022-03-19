#!/bin/bash

echo "Checking for conflicts..."

if [ -x "$(command -v cpenv)" ]; then
    echo "Error: cpenv is already installed" >&2
    exit 1
fi

echo "Installing cpenv..."

mkdir -p $HOME/.cpenv

cp ./* $HOME/.cpenv/

echo "Adding cpenv to PATH..."

echo export PATH=$HOME/.cpenv:$PATH >> $HOME/.bashrc

echo "Done"