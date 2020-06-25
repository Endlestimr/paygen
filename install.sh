#!/bin/bash
#colors
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
cyan=$(tput setaf 6)
bold=$(tput bold 5)
clear

echo
echo "${yellow}${bold} ~ Installating PayGen... "
echo
sleep 2
chmod 777 paygen
echo
cp -r paygen $PREFIX/bin
echo
sleep 1
echo "${green}${bold} ~ PayGen Successfully Installed"
echo
sleep 1
echo "${cyan}${bold} ~ Type paygen Anywhere To Run PayGen "
echo 
sleep 1
echo "${cyan}${bold} ~ Made By Shadow Walker "
echo 
