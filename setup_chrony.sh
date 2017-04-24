#!/bin/bash

echo "Chrony - Client | Setup"

# ----------------- Check if user is root ----------------
if [ "$(whoami)" != "root" ]; then
	echo "Sorry, you are not root."
	exit 1
fi


tar -zxvf chrony-3.1.tar.gz # extracts source
cd chrony-3.1

./configure --prefix /usr/local