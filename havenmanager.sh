#!/bin/bash
#Scripiter Penguin
#

# Color Codes

#Black        0;30     Dark Gray     1;30
#Red          0;31     Light Red     1;31
#Green        0;32     Light Green   1;32
#Brown/Orange 0;33     Yellow        1;33
#Blue         0;34     Light Blue    1;34
#Purple       0;35     Light Purple  1;35
#Cyan         0;36     Light Cyan    1;36
#Light Gray   0;37     White         1;37
menu()
{
black='\033[0;30m'
red='\033[0;31m'
green='\033[0;32m'
browno='\033[0;33m'
blue='\033[0;34m'
purple='\033[0;35m'
cyan='\033[0;36m'
lightgray='\033[0;37m'
darkgray='\033[1;30m'
lightred='\033[1;31m'
lightgreen='\033[1;32m'
yellow='\033[1;33m'
lightblue='\033[1;34m'
lightpurple='\033[1;35m'
lightcyan='\033[1;36m'
white='\033[1;37m'
clear
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%30s%s%-10s\n' "SCP CB MULTIPLAYER HAVEN" ; tput sgr0 ; echo ""
tput setaf 2 ; tput bold ; printf '%s' "|1|"; tput setaf 6 ; printf '%s' " Install" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Install all packets" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|2|"; tput setaf 6 ; printf '%s' " Change config server" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Change the server configuration" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|3|"; tput setaf 6 ; printf '%s' " Compile server" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Compile the haven server and start" ; tput sgr0 ;
echo ""
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%30s%s%-10s\n' "Select a Option" ; tput sgr0 ; echo ""
read  opcao
case $opcao in
	1) install ;;
	2) change ;;
	3) compile ;;
esac

}
install(){
sudo apt update && sudo apt upgrade -y
sudo apt-get install cmake g++-10 build-essentials git -y
clear 
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%30s%s%-10s\n' "GENERATING DEFAULT CONFIG" ; tput sgr0 ; echo ""
sleep 2
mkdir $HOME/SCP/
cd $HOME/SCP/
echo 'seed=dragon' >> config.cake
echo 'port=5021' >> config.cake
echo 'cheat=0' >> config.cake
echo 'mode=0' >> config.cake
echo "name='Default'" >> config.cake
echo "desc='Default Desc'" >> config.cake
echo "link='Default Link'" >> config.cake
echo 'intro=0' >> config.cake
echo 'timeout=30000' >> config.cake
echo 'voice=1' >> config.cake
echo 'players=16' >> config.cake
echo 'jump=1' >> config.cake
echo 'gravity=0.0023f' >> config.cake
echo 'tick=128' >> config.cake
echo "password=''" >> config.cake
echo "state='In lobby'" >> config.cake
clear
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%30s%s%-10s\n' "DEFAULT CONFIG OK" ; tput sgr0 ; echo ""
menu
}

change()
{
cd $HOME/SCP/
clear
source config.cake
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%30s%s%-10s\n' "CONFIG EDITOR" ; tput sgr0 ; echo ""
tput setaf 2 ; tput bold ; printf '%s' "|1|"; tput setaf 6 ; printf '%s' " Change seed" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Seed is: $seed" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|2|"; tput setaf 6 ; printf '%s' " Change port" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Port is: $port" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|3|"; tput setaf 6 ; printf '%s' " Change No Cheat" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual No Cheat is: $cheat" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|4|"; tput setaf 6 ; printf '%s' " Change Difficulty" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Difficulty is: $mode" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|5|"; tput setaf 6 ; printf '%s' " Change Name" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Name is: $name" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|6|"; tput setaf 6 ; printf '%s' " Change Description" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Description is: $desc" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|7|"; tput setaf 6 ; printf '%s' " Change Link" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Link is: $link" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|8|"; tput setaf 6 ; printf '%s' " Change Intro" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Intro is: $intro" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|9|"; tput setaf 6 ; printf '%s' " Change Timeout" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Timeout is: $timeout" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|10|"; tput setaf 6 ; printf '%s' " Change Voice" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Voice is: $voice" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|11|"; tput setaf 6 ; printf '%s' " Change Players" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Players is: $players" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|12|"; tput setaf 6 ; printf '%s' " Change Jump" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Jump is: $jump" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|13|"; tput setaf 6 ; printf '%s' " Change Gravity" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Gravity is: $gravity" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|14|"; tput setaf 6 ; printf '%s' " Change Tickrate" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual TickRate is: $tick" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|15|"; tput setaf 6 ; printf '%s' " Change Password NOT WORKING FOR NOW" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Password is: $password" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|16|"; tput setaf 6 ; printf '%s' " Change State" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual State is: $state" ; tput sgr0 ;
tput setaf 2 ; tput bold ; printf '%s' "|0|"; tput setaf 6 ; printf '%s' " BACK TO MENU"
echo ""
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%30s%s%-10s\n' "Select a Option" ; tput sgr0 ; echo ""
read  opcao
case $opcao in
	1) changeseed ;;
	2) changeport ;;
	3) changenocheat ;;
	4) changemode ;;
	5) changename ;;
	6) changedesc ;;
	7) changelink ;;
	8) changeintro ;;
	9) changetimeout ;;
	10) changevoice ;;
	11) changeplayers ;;
	12) changejump ;;
	13) changegravity ;;
	14) changetick ;;
	15) changepassword ;;
	16) changestate ;;
	0) menu ;;
esac
}

changeseed()
{
clear
source config.cake
tput setaf 2 ; tput bold ; printf '%s' "|*|"; tput setaf 6 ; printf '%s' "Input new SEED" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Seed is: $seed" ; tput sgr0 ;
read seednew
if [ -z "$seednew" ]; then
echo "Seed EMPITY "
sleep 2
changeseed
else
sed -i "s/seed=$seed/seed=$seednew/g" config.cake
change
fi
}

changeport()
{
clear
source config.cake
tput setaf 2 ; tput bold ; printf '%s' "|*|"; tput setaf 6 ; printf '%s' "Input new Port" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Port is: $port" ; tput sgr0 ;
read portnew
if [ -z "$portnew" ]; then
echo "Port EMPITY "
sleep 2
changeport
else
sed -i "s/port=$port/port=$portnew/g" config.cake
change
fi
}

changenocheat()
{
clear
source config.cake
tput setaf 2 ; tput bold ; printf '%s' "|*|"; tput setaf 6 ; printf '%s' "Input new No Cheat" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual No Cheat is: $cheat" ; tput sgr0 ;
read nocheatnew
if [ -z "$nocheatnew" ]; then
echo "No Cheat EMPITY "
sleep 2
changenocheat
else
sed -i "s/cheat=$cheat/cheat=$nocheatnew/g" config.cake
change
fi
}

changemode()
{
clear
source config.cake
tput setaf 2 ; tput bold ; printf '%s' "|*|"; tput setaf 6 ; printf '%s' "Input new Difficulty" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Difficulty is: $mode" ; tput sgr0 ;
read modenew
if [ -z "$modenew" ]; then
echo "Difficultyt EMPITY "
sleep 2
changemode
else
sed -i "s/mode=$mode/mode=$modenew/g" config.cake
change
fi
}

changename()
{
clear
source config.cake
tput setaf 2 ; tput bold ; printf '%s' "|*|"; tput setaf 6 ; printf '%s' "Input new Name" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Name is: $name" ; tput sgr0 ;
read namenew
if [ -z "$namenew" ]; then
echo "Name EMPITY "
sleep 2
changename
else
sed -i "s/name='$name'/name='$namenew'/g" config.cake
change
fi
}

changedesc()
{
clear
source config.cake
tput setaf 2 ; tput bold ; printf '%s' "|*|"; tput setaf 6 ; printf '%s' "Input new Description" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Description is: $desc" ; tput sgr0 ;
read descnew
if [ -z "$descnew" ]; then
echo "Description EMPITY "
sleep 2
changedesc
else
sed -i "s/desc='$desc'/desc='$descnew'/g" config.cake
change
fi
}

changelink()
{
clear
source config.cake
tput setaf 2 ; tput bold ; printf '%s' "|*|"; tput setaf 6 ; printf '%s' "Input new Link" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Link is: $link" ; tput sgr0 ;
read linknew
if [ -z "$linknew" ]; then
echo "link EMPITY "
sleep 2
changelink
else
sed -i "s/link='$link'/link='$linknew'/g" config.cake
change
fi
}

changeintro()
{
clear
source config.cake
tput setaf 2 ; tput bold ; printf '%s' "|*|"; tput setaf 6 ; printf '%s' "Input new Intro" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Intro is: $intro" ; tput sgr0 ;
read intronew
if [ -z "$intronew" ]; then
echo "Intro EMPITY "
sleep 2
changeintro
else
sed -i "s/intro=$intro/intro=$intronew/g" config.cake
change
fi
}

changetimeout()
{
clear
source config.cake
tput setaf 2 ; tput bold ; printf '%s' "|*|"; tput setaf 6 ; printf '%s' "Input new TimeOut" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Timeout is: $timeout" ; tput sgr0 ;
read timeoutnew
if [ -z "$timeoutnew" ]; then
echo "Timeout EMPITY "
sleep 2
changetimeout
else
sed -i "s/timeout=$timeout/timeout=$timeoutnew/g" config.cake
change
fi
}

changevoice()
{
clear
source config.cake
tput setaf 2 ; tput bold ; printf '%s' "|*|"; tput setaf 6 ; printf '%s' "Input new Voice" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Voice is: $voice" ; tput sgr0 ;
read voicenew
if [ -z "$voicenew" ]; then
echo "Voice EMPITY "
sleep 2
changevoice
else
sed -i "s/voice=$voice/voice=$voicenew/g" config.cake
change
fi
}

changeplayers()
{
clear
source config.cake
tput setaf 2 ; tput bold ; printf '%s' "|*|"; tput setaf 6 ; printf '%s' "Input new Max Players" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Max Players is: $players" ; tput sgr0 ;
read playersnew
if [ -z "$playersnew" ]; then
echo "Max Players EMPITY "
sleep 2
changeplayers
else
sed -i "s/players=$players/players=$playersnew/g" config.cake
change
fi
}

changejump()
{
clear
source config.cake
tput setaf 2 ; tput bold ; printf '%s' "|*|"; tput setaf 6 ; printf '%s' "Input new Jump" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Jump is: $jump" ; tput sgr0 ;
read jumpnew
if [ -z "$jumpnew" ]; then
echo "Jump EMPITY "
sleep 2
changejump
else
sed -i "s/jump=$jump/jump=$jumpnew/g" config.cake
change
fi
}

changegravity()
{
clear
source config.cake
tput setaf 2 ; tput bold ; printf '%s' "|*|"; tput setaf 6 ; printf '%s' "Input new Gravity" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Gravity is: $gravity" ; tput sgr0 ;
read gravitynew
if [ -z "$gravitynew" ]; then
echo "gravity EMPITY "
sleep 2
changegravity
else
sed -i "s/gravity=$gravity/gravity=$gravitynew/g" config.cake
change
fi
}

changetick()
{
clear
source config.cake
tput setaf 2 ; tput bold ; printf '%s' "|*|"; tput setaf 6 ; printf '%s' "Input new TickRate" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual TickRate is: $tick" ; tput sgr0 ;
read ticknew
if [ -z "$ticknew" ]; then
echo "TickRate EMPITY "
sleep 2
changetick
else
sed -i "s/tick=$tick/tick=$ticknew/g" config.cake
change
fi
}

changepassword()
{
clear
source config.cake
tput setaf 2 ; tput bold ; printf '%s' "|*|"; tput setaf 6 ; printf '%s' "Input new Password" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual Password is: $password" ; tput sgr0 ;
read passwordnew
if [ -z "$passwordnew" ]; then
echo "password EMPITY "
sleep 2
changepassword
else
sed -i "s/password=$password/password=$passwordnew/g" config.cake
change
fi
}

changestate()
{
clear
source config.cake
tput setaf 2 ; tput bold ; printf '%s' "|*|"; tput setaf 6 ; printf '%s' "Input new State" ; tput setaf 4 ; printf '%s' " = " ; tput setaf 7 ; echo "Actual State is: $state" ; tput sgr0 ;
read statenew
if [ -z "$statenew" ]; then
echo "State EMPITY "
sleep 2
changestate
else
sed -i "s/state='$state'/state='$statenew'/g" config.cake
change
fi
}

compile()
{
cd $HOME/SCP/
source config.cake
pkill -9 haven
echo ""
rm -f -r SCP01
mkdir SCP01
cd SCP01
git clone https://github.com/lanylow/haven.git
cd haven
mv config.sample.hpp config.hpp
sed -i "s,https://github.com/lanylow/haven,$link,g" config.hpp
sed -i "s/SCP Server running on haven/$desc/g" config.hpp
sed -i "s/"haven"/"$seed"/g" config.hpp
sed -i "s/port = 50021;/port = $port;/g" config.hpp
sed -i "s/no_cheat = 0;/no_cheat = $cheat;/g" config.hpp
sed -i "s/difficulty = 0;/difficulty = $mode;/g" config.hpp
sed -i "s/SCP Server/$name/g" config.hpp
sed -i "s/intro_enabled = 0;/intro_enabled = $intro;/g" config.hpp
sed -i "s/timeout = 30000;/timeout = $timeout;/g" config.hpp
sed -i "s/voice = 1;/voice = $voice;/g" config.hpp
sed -i "s/max_players = 16;/max_players = $players;/g" config.hpp
sed -i "s/jump_mode = 1;/jump_mode = $jump;/g" config.hpp
sed -i "s/gravity = 0.0023f;/gravity = $gravity;/g" config.hpp
sed -i "s/tickrate = 128;/tickrate = $tick;/g" config.hpp
sed -i "s/password = "";/password = "$password";/g" config.hpp
sed -i "s/In lobby/$state/g" config.hpp
sh build.sh
screen -dmS SCP01 $HOME/SCP/SCP01/haven/out/haven
cd $HOME/SCP/
cd $HOME
menu
}
menu