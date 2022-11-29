#!bin/bash

trap "tput rmcup; exit" SIGHUP SIGINT SIGTERM

tput smcup

clear

LOG_DPKG="/var/log/dpkg.log"
THE_SH="/home/book/B4RT/the_scrypt.sh"

while true

do
	echo "Entrer 1 pour DPKG_INSTALLER"
	echo "Entrer 2 pour DPKG_ERROR"
	echo "Entrer 3 pour DPKG_NON_INSTALLE"
	echo -e "\n"
	echo -e "Entrer votre choix \c"
    read REP

    clear

    case $REP in
    	1) grep "install" $LOG_DPKG && read -p $ && clear ;;
        
        2) grep "<none>" $LOG_DPKG && read -p  $ && clear ;;
        
        3) grep "status" $LOG_DPKG && read -p $ && clear ;;
    esac

done
 clear
