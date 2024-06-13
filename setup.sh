#!/bin/bash

echo "Connect to the internet and then press any key"
read something

apt update

echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10

apt upgrade

echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10

apt install -y git
echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10
apt install -y gh
echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10
apt install -y curl
echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10
apt install -y htop
echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10
apt install -y thefuck
echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10
apt install -y zoxide
echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10
apt install stow
echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10

# Librewolf
apt update && apt install -y wget gnupg lsb-release apt-transport-https ca-certificates

echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10

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
echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10
apt install librewolf -y
echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10


# Nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage /usr/local/bin/nvim

echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10

git clone https://github.com/CoolRobotsAndStuff/nvim-config.git
mv ./nvim-config ~/.config/nvim/

echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10

# Config files
git clone  https://github.com/CoolRobotsAndStuff/dotfiles.git
mv ./dotfiles/ ~/dotfiles/

echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10

stow ~/dotfiles/

echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10

# Terminal
cargo install alacritty

echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10

# i3wm
cargo install easy-i3-neovim-nav

echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10

apt install -y i3

echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10

apt install -y picom

echo ""
echo ""
echo "Letting pen drive rest..."
echo ""
sleep 10


echo "Now you need to update the .xinitrc, and install the FiraCodeNerdFont."

