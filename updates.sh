#!/bin/bash

#Updating the system
#linux 14.04.5 Ubuntu
#List of Distro's in CP: ubuntu, debian, fedora, arch linux, suse linux
USER=$(whoami)

##run in root
#daily updates
sed -i -e 's/APT::Periodic::Update-Package-Lists.*\+/APT::Periodic::Update-Package-Lists "1";/' /etc/apt/apt.conf.d/10periodic
sed -i -e 's/APT::Periodic::Download-Upgradeable-Packages.*\+/APT::Periodic::Download-Upgradeable-Packages "0";/' /etc/apt/apt.conf.d/10periodic
#default browser :)





#Changing the source files...
sudo echo '###ADDED FILE LINES###' >> /etc/apt/sources.list
sudo echo '###MAIN SOFTWARE###' >> /etc/apt/sources.list
sudo echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty restricted main' >> /etc/apt/sources.list
sudo echo 'deb-src http://us.archive.ubuntu.com/ubuntu/ trusty restricted main' >> /etc/apt/sources.list
sudo echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates restricted main' >> /etc/apt/sources.list
sudo echo 'deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-updates restricted main' >> /etc/apt/sources.list
sudo echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty-backports restricted universe multiverse main' >> /etc/apt/sources.list
sudo echo 'deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-backports restricted universe multiverse main' >> /etc/apt/sources.list
sudo echo 'deb http://security.ubuntu.com/ubuntu trusty-security restricted main' >> /etc/apt/sources.list
sudo echo 'deb-src http://security.ubuntu.com/ubuntu trusty-security restricted main' >> /etc/apt/sources.list
sudo echo '###UNIVERSE UPDATES###' >> /etc/apt/sources.list
sudo echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty universe' >> /etc/apt/sources.list
sudo echo 'deb-src http://us.archive.ubuntu.com/ubuntu/ trusty universe' >> /etc/apt/sources.list
sudo echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates universe' >> /etc/apt/sources.list
sudo echo 'deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-updates universe' >> /etc/apt/sources.list
sudo echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty-backports restricted universe multiverse' >> /etc/apt/sources.list
sudo echo 'deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-backports restricted universe multiverse' >> /etc/apt/sources.list
sudo echo 'deb http://security.ubuntu.com/ubuntu trusty-security universe' >> /etc/apt/sources.list
sudo echo 'deb-src http://security.ubuntu.com/ubuntu trusty-security universe' >> /etc/apt/sources.list
sudo echo '###RESTRICTED UPDATES###' >> /etc/apt/sources.list
sudo echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty restricted' >> /etc/apt/sources.list
sudo echo 'deb-src http://us.archive.ubuntu.com/ubuntu/ trusty restricted' >> /etc/apt/sources.list
sudo echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates restricted' >> /etc/apt/sources.list
sudo echo 'deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-updates restricted' >> /etc/apt/sources.list
sudo echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty-backports restricted multiverse' >> /etc/apt/sources.list
sudo echo 'deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-backports restricted multiverse' >> /etc/apt/sources.list
sudo echo 'deb http://security.ubuntu.com/ubuntu trusty-security restricted' >> /etc/apt/sources.list
sudo echo 'deb-src http://security.ubuntu.com/ubuntu trusty-security restricted' >> /etc/apt/sources.list
sudo echo '###MULTIVERSE###' >> /etc/apt/sources.list
sudo echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty multiverse' >> /etc/apt/sources.list
sudo echo 'deb-src http://us.archive.ubuntu.com/ubuntu/ trusty multiverse' >> /etc/apt/sources.list
sudo echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates multiverse' >> /etc/apt/sources.list
sudo echo 'deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-updates multiverse' >> /etc/apt/sources.list
sudo echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty-backports multiverse' >> /etc/apt/sources.list
sudo echo 'deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-backports multiverse' >> /etc/apt/sources.list
sudo echo 'deb http://security.ubuntu.com/ubuntu trusty-security multiverse' >> /etc/apt/sources.list
sudo echo 'deb-src http://security.ubuntu.com/ubuntu trusty-security multiverse' >> /etc/apt/sources.list
sudo echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty-backports restricted universe multiverse main' >> /etc/apt/sources.list
sudo echo 'deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-backports restricted universe multiverse main' >> /etc/apt/sources.list
sudo echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty-backports restricted universe multiverse' >> /etc/apt/sources.list
sudo echo 'deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-backports restricted universe multiverse' >> /etc/apt/sources.list
sudo echo 'deb http://us.archive.ubuntu.com/ubuntu/ trusty-backports restricted multiverse' >> /etc/apt/sources.list
sudo echo 'deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-backports restricted multiverse' >> /etc/apt/sources.list



#security software and other programs...
sudo apt-get install ufw -y
wait
sudo ufw enable
wait
sudo apt-get install clamtk -y
wait
sudo apt-get install apticron -y
wait
sudo apt-get install fail2ban
wait
sudo add apt-repository -y ppa:libreoffice/ppa
wait
sudo apt-get --purge --reinstall install firefox -y
wait
sudo apt-get install firefox
wait
sudo apt-get install chkrootkit -y
wait
#updatting
sudo apt-get update -y
wait
sudo apt-get upgrade -y
wait
sudo apt-get dist-upgrade -y
wait
sudo apt-get install unattended upgrades -y
wait
sudo apt-get autoremove -y
wait
sudo apt-get install lynis -y
wait
sudo apt install libreoffice

#backs up all the files
mkdir /Backups
##sudoers
sudo cp /etc/sudoers /Backups
##home dir
cp /etc/passwd /Backups
##log files
cp -r /var/log /Backups
##group files
cp /etc/group /Backups
#shadow file
cp /etc/shadow /Backups
#Back up the /var/spool/mail
cp /var/spool/mail /Backups
#backs up all the home Dir
for x in `ls /home`
do
        cp -r /home/$x /Backups
done

cat /etc/apt/sources.list | grep "deb http://security.ubuntu.com/ubuntu/ trusty-security universe main multiverse restricted"
		if [ $? -eq 1 ]
		then
			echo "deb http://security.ubuntu.com/ubuntu/ trusty-security universe main multiverse restricted" >> /etc/apt/sources.list
		fi
