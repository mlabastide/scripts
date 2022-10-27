#!/bin/bash
## Check Root
if [[ "${UID}" -ne 0 ]]
then
 echo 'Please run this script as "root"' >&2
 exit 1
fi

## curl install
apt install curl

## tailsclae install

echo "Would you like to install tailscale? Y/n"
read n

if [[ ( $n == "Y" || $n == "y" ) ]]
then
#Tailscale
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg >/dev/null
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.tailscale-keyring.list | sudo tee /etc/apt/sources.list.d/tailscale.list
else
echo "Okay, Fine with me..."
fi
