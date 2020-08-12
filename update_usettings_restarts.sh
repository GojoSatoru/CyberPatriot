#!/bin/bash 

#Siege Worms 
#Made by Technical Mentor @RedHoodHacker 


#changing update settings 
sudo dpkg -l | grep unattended-upgrades >> /dev/null
if [ $? -eq 1 ];
then
	echo "unattended-upgrades are not installed...installing...."
	sleep 2
	sudo apt-get install unattended-upgrades -y 
	wait 
	sudo dpkg-reconfigure --priority=low unattended-upgrades
else
	echo "unattended-upgrades are installed..."
	sleep 2
	clear
fi

#one might try making a cron job and making it update weekly in comp 


#updating the 10periodic settings by just echoing in new lines 
echo "Adding update settings to /etc/apt/apt.conf.d/10periodic"
sleep 2
sudo echo 'APT::Periodic::Update-Package-Lists "1";' >> /etc/apt/apt.conf.d/10periodic 
sudo echo 'APT::Periodic::Download-Upgradeable-Packages "1";' >> /etc/apt/apt.conf.d/10periodic 
sudo echo 'APT::Periodic::AutocleanInterval "1";' >> /etc/apt/apt.conf.d/10periodic 
cat /etc/apt/apt.conf.d/10periodic 
sleep 2 
echo "Can you see the new lines?" 
clear 

echo "Installing updates..."
sleep 2 
clear
sudo apt-get update 
wait
sudo apt-get upgrade -y 
wait 
sudo apt-get autoremove -y 
wait 
#dist-upgrade might remove packages that are dependant to certain programs, which is why 
#one should run safe-upgrade





