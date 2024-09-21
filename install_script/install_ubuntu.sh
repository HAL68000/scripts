#!/data/data/com.termux/files/usr/bin/bash
apt-get update
apt-get --yes --allow -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-new" upgrade
apt-get install proot -y
apt-get install proot-distro -y
proot-distro install ubuntu
proot-distro login ubuntu -- bash -c "apt-get update && apt-get --yes -o Dpkg::Options::='--force-confdef' -o Dpkg::Options::='--force-new' upgrade"
