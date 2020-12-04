#!/bin/bash
echo " __    _  _______  _______  _______ ";
echo "|  |  | ||       ||       ||       |";
echo "|   |_| ||   _   ||_     _||    ___|";
echo "|       ||  | |  |  |   |  |   |___ ";
echo "|  _    ||  |_|  |  |   |  |    ___|";
echo "| | |   ||       |  |   |  |   |___ ";
echo "|_|  |__||_______|  |___|  |_______|";

echo " After this script ends you need to make changes to your vm instance too to allow the vncserver to connect properly ";
echo " For that you can just check this youtube video : https://www.youtube.com/watch?v=oYso_F7GW3A ";
echo " Made By Samyak Jain ";
echo "************************************************************************************************************************************"
echo "Press any key to continue"
read Ans2
echo "************************************************************************************************************************************"
sudo apt-get update
sudo apt-get upgrade -y
echo "************************************************************************************************************************************"
sudo apt-get install ubuntu-desktop -y
echo "************************************************************************************************************************************"
sudo apt-get install gnome-panel gnome-settings-daemon metacity nautilus gnome-terminal -y
echo "************************************************************************************************************************************"
sudo apt-get install vnc4server -y
vncserver
echo "************************************************************************************************************************************"
sudo apt-get install gnome-core -y
cd
printf " Now Copy these and paste it in the bottom of the upcomming file\n gnome-panel &\n gnome-settings-daemon &\n metacity &\n nautilus &\n "
echo "Press any key to continue"
read Ans
echo "************************************************************************************************************************************"
cd
sudo nano /etc/.vnc/xstartup
echo "************************************************************************************************************************************"
vncserver -kill :1
vncserver
echo " Thankyou For using!! "
