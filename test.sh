#!/bin/bash

## Cowsay install

echo "Would you like to install cowsay?Y/n"
read n

if [[ ( $n == "Y" || $n == "y" ) ]]
then
sudo pacman -S cowsay
else
echo "Okay, Fine with me..."
fi
