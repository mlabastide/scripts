#!/bin/bash
## Check Root
if [[ "${UID}" -ne 0 ]]
then
 echo 'Please run this script as "root"' >&2
 exit 1
fi

## tailsclae install

echo "Would you like to install tailscale? Y/n"
read n

if [[ ( $n == "Y" || $n == "y" ) ]]
then
curl -fsSL https://tailscale.com/install.sh | sh
else
echo "Okay, Fine with me..."
fi
