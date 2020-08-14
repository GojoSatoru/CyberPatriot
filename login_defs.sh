#!/bin/bash

#securing login_defs file in ubuntu

#just echos new lines into login.defs
sudo echo "##ADDED LINES###" >> /etc/login.defs
sudo echo "#" >> /etc/login.defs
sudo echo "#" >> /etc/login.defs
sudo echo "##PASSWORD AGE###" >> /etc/login.defs
sudo echo "PASS_MAX_DAYS 90" >> /etc/login.defs
sudo echo "PASS_MIN_DAYS 10" >> /etc/login.defs
sudo echo "PASS_MIN_LEN 8" >> /etc/login.defs
sudo echo "PASS_WARN_AGE 7" >> /etc/login.defs
sudo echo "###USER AND SYS IDS###" >> /etc/login.defs
sudo echo "UID_MIN 1000" >> /etc/login.defs
sudo echo "UID_MAX 60000" >> /etc/login.defs
sudo echo "SYS_UID_MIN 100" >> /etc/login.defs
sudo echo "SYS_UID_MIN 999" >> /etc/login.defs
sudo echo "###LOGIN RETRIES###" >> /etc/login.defs
sudo echo "LOGIN_RETRIES 5" >> /etc/login.defs
sudo echo "LOGIN_TIMEOUT 60" >> /etc/login.defs
sudo echo "##DEFAULT HOME###" >> /etc/login.defs
sudo echo "DEFAULT_HOME no" >> /etc/login.defs
sudo echo "###ENCRYPT METHOD###" >> /etc/login.defs
sudo echo "ENCRYPT_METHOD SHA512" >> /etc/login.defs
sudo echo "LOG_OK_LOGINS yes" >> /etc/login.defs
sudo echo "LOG_UNKFAIL_ENAB yes" >> /etc/login.defs
#i am kind of confused on how to set this...cause I don't know what kind of file one 
#might create, one that the sys might need access to. but certain situations 
#will pertain to certain files...
sudo echo "UMASK 700" >> /etc/login.defs








