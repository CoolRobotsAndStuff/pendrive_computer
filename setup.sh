#!/bin/bash

echo "Connect to the internet and then press any key"
read something

apt update

sleep 10
echo "Letting pen drive rest..."

apt upgrade

sleep 10
echo "Letting pen drive rest..."

apt install -y git
sleep 10
echo "Letting pen drive rest..."
apt install -y gh
sleep 10
echo "Letting pen drive rest..."
apt install -y curl
sleep 10
echo "Letting pen drive rest..."
apt install -y htop
sleep 10
echo "Letting pen drive rest..."
apt install -y thefuck
sleep 10
echo "Letting pen drive rest..."
apt install -y zoxide
sleep 10
echo "Letting pen drive rest..."
apt install -y cargo
sleep 10
echo "Letting pen drive rest..."

# Librewolf
apt update && apt install -y wget gnupg lsb-release apt-transport-https ca-certificates

sleep 10
echo "Letting pen drive rest..."

distro=$(if echo " una bookworm vanessa focal jammy bullseye vera uma " | grep -q " $(lsb_release -sc) "; then lsb_release -sc; else echo focal; fi)

wget -O- https://deb.librewolf.net/keyring.gpg | gpg --dearmor -o /usr/share/keyrings/librewolf.gpg

tee /etc/apt/sources.list.d/librewolf.sources << EOF > /dev/null
Types: deb
URIs: https://deb.librewolf.net
Suites: $distro
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/librewolf.gpg
EOF

apt update
sleep 10
echo "Letting pen drive rest..."
apt install librewolf -y
sleep 10
echo "Letting pen drive rest..."


# Nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage /usr/local/bin/nvim

sleep 10
echo "Letting pen drive rest..."

git clone -o ~/config/nvim https://github.com/CoolRobotsAndStuff/nvim-config.git

sleep 10
echo "Letting pen drive rest..."

# Config files
git clone -o ~/dotfiles https://github.com/CoolRobotsAndStuff/dotfiles.git

sleep 10
echo "Letting pen drive rest..."

stow ~/dotfiles/

sleep 10
echo "Letting pen drive rest..."

# Terminal
cargo install alacritty

sleep 10
echo "Letting pen drive rest..."

# i3wm
cargo install easy-i3-neovim-nav

sleep 10
echo "Letting pen drive rest..."

apt install -y i3

sleep 10
echo "Letting pen drive rest..."


echo "Now you need to update the .xinitrc, and install the FiraCodeNerdFont."

