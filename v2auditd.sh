#!/bin/bash

user=$(whoami)
date=$(date)



audit_everything(){
for x in `ls /etc`
do
  sudo service auditd stop
  sudo auditctl -w /etc/$x -p rwxa
  sudo echo -w /etc/$x -p rwxa >> /etc/audit/audit.rules
  echo auditctl -w /etc/$x -p rwxa >> auditcommands.txt
  sudo service auditd start
done
}


audit_everything
