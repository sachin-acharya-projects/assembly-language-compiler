#!/bin/bash

arrayname[0]='nasm'
arrayname[1]='as31'

CYAN='\033[0;36m'
RED='\033[0;31m'

for i in ${arrayname[@]}
do
 REQUIRED_PKG=$i
 PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
 echo -e $CYAN"Checking for Package \e[1m$REQUIRED_PKG"
 if [ "" = "$PKG_OK" ]; then
  echo -e $RED"Package \e[1m$REQUIRED_PKG is not installed. Installing..."
  sudo apt-get --yes install $REQUIRED_PKG 
#  fi
 else
  echo -e $CYAN"Package \e[1m$REQUIRED_PKG is already installed"
 fi
 echo ""
done
