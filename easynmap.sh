#!/bin/bash

#start

echo "
.________ ____   ____.______  .______  .___ ._______ .______  _____._._______
|    ___/ \   \_/   /:      \ :_ _   \ : __|:_.  ___\:      \ \__ _:|: .____/
|___    \  \___ ___/ |       ||   |   || : ||  : |/\ |   .   |  |  :|| : _/\ 
|       /    |   |   |   |   || . |   ||   ||    /  \|   :   |  |   ||   /  \
|__:___/     |___|   |___|   ||. ____/ |   ||. _____/|___|   |  |   ||_.: __/
   :                     |___| :/      |___| :/          |___|  |___|   :/   
                               :             :                               "
echo "Making nmap easy since 3 minutes ago!"
echo "may need to run as root"
echo "more info on nmap? 1 for no / 2 for yes"

read -s info

if [ $info -eq 1 ]
then
	echo "ok,"
fi

if [ $info -eq 2 ]
then
	echo "-sS / -sT / -sF / -sX / -sN / -sP / -sV"
	echo " -sU / -sO / -sA / -sW / sR / sL / -b"
	echo "
MORE info? 1 for no / 2 for yes"
	read -s dinfo
	
	if [ $dinfo -eq 1 ]
	then
		echo "Ok,"
	fi
	
	if [ $dinfo -eq 2 ]
	then
		echo "enter directory EasyNmap folder is installed in (~/Downloads)"
		read direc
		
		open $direc/nmaptable.png

	fi
fi

set direc = 0
set info = 0
set dinfo = 0

echo "enter below the type of nmap scan"

read scantype

echo "next, enter ip of scan target"

read ip

echo "press enter"

read

clear

nmap $scantype $ip

set scantype = 0
set ip = 0 

#end
