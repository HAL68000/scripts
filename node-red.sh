#!/data/data/com.termux/files/usr/bin/bash

# Percorso della cartella da controllare
UBUNTU_FOLDER="/percorso/della/cartella"

# Controlla se la cartella esiste
if [ -d "$UBUNTU_FOLDER" ]; then
    echo "Ubuntu installation found!"
    
    apt update
    apt upgrade -y
    npm install -g --unsafe-perm node-red
    

else
    echo "Ubuntu folder not found, install ubuntu first!"
fi
