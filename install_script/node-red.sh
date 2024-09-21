#!/data/data/com.termux/files/usr/bin/bash

# Percorso della cartella da controllare
UBUNTU_FOLDER="/data/data/com.termux/files/usr/var/lib/proot-distro/installed-rootfs/ubuntu"

# Controlla se la cartella esiste
if [ -d "$UBUNTU_FOLDER" ]; then
    echo "Ubuntu installation found!"
    proot-distro login ubuntu -- bash -c "apt-get update"
    proot-distro login ubuntu -- bash -c "apt-get upgrade -y --fix-missing"
    proot-distro login ubuntu -- bash -c "apt-get install apt-utils -y"
    proot-distro login ubuntu -- bash -c "apt-get install nodejs npm -y && npm install -g --unsafe-perm node-red"
else
    echo "Ubuntu folder not found, install ubuntu first!"
fi
