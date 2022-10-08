#!/bin/bash

# super user
   echo "need root for stuff"
   sudo "echo thanks"

# wifi
   iwctl station wlan0 connect WhiteFi

# makes home folders
   cd ~
   mkdir Downloads
   mkdir Documents
   mkdir Pictures
   mkdir Desktop
   mkdir Videos
   mkdir Music
   mkdir Mycode
   mkdir Isos
   cd Downloads
   mkdir git
   mkdir aur
   cd ~

# install needed programs
   yes | sudo pacman -Syu
   yes | sudo pacman -S git
   yes | sudo pacman -S byobu
   yes | sudo pacman -S xterm
   yes | su cd Downloads
do pacman -S polybar
   yes | sudo pacman -S i3-wm
   yes | sudo pacman -S 

# yes | sudo pacman -S 
# install yay
   cd Downloads
   cd aur
   git clone https://aur.archlinux.org/yay.git
   cd yay
   makepkg sri
   /bin/rm -rf /tmp/* /tmp/.* &>/dev/null
