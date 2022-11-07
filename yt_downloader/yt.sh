#!/usr/bin/env bash  

sudo apt install whiptail


 chmod u+x installer.sh
 ./installer.sh


LINK=$(whiptail --title "LINK" --inputbox "Paste the youtube link" 8 40 3>&1 1>&2 2>&3)

$LINK


{
CHOICE=$(
whiptail --title "Operative Systems" --menu "Make your choice" 16 100 9 \
	"1)" "Info"   \
	"2)" "Download"  3>&2 2>&1 1>&3	
)


case $CHOICE in
	"1)")   
        rm info.txt
        python3 info.py
        whiptail --textbox --scrolltext YT.txt 10 80
	;;
	"2)")   
	   python3 download.py
    ;;
esac
./menu.sh
}