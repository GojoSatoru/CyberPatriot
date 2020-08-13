#!/bin/bash

##adding users in Ubuntu | Debian

#@RedHoodHacker


add_users() {
read -p "add users? [y/n]: " b
while [ $b == "y" ];
do 
  read -p "name of user you would like to add: " name
  echo "creating user" $name  
  sudo useradd $name
  sudo mkdir /home/$name 
  read -p "add users? [y/n]: " b
done
}

del_users() {
read -p "del users? [y/n]: " c
while [ $c == "y" ];
do 
  echo "This script is intended to del the user you mention"
  echo "No yes or no questions if you want this user scrapped."
  sleep 2
  read -p "name of user you would like to del: " name
  sudo mv /home/$name  /home/dis_$name
  sudo sed -i -e "/$name/ s/^#*/#/" /etc/passwd
  sleep 1 
  echo "the user " $name " is removed..." 
  read -p "del users? [y/n]: " c 
done
}


#questions...
read -p "Would you like to add/del users [a/d]: " a 

if [ $a == "a" ];
then
    echo "adding users..."
    add_users
fi 

if [ $a == "d" ];
then 
    echo "deleting users..."
    del_users
fi 
