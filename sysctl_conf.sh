#!/bin/bash

#securing  sysctl.conf

sudo echo -e "###ADDEDLINES###" >> /etc/sysctl.conf
sudo echo -e "kernel.core_uses_pid = 1" >> /etc/sysctl.conf
sudo echo -e "kernel.ctrl-alt-del = 0" >> /etc/sysctl.conf
sudo echo -e "kernel.sysrq = 0" >> /etc/sysctl.conf
sudo echo -e "net.ipv4.conf.all.accept_redirects = 0" >> /etc/sysctl.conf
sudo echo -e "net.ipv4.conf.all.accept_source_route = 0" >> /etc/sysctl.conf
sudo echo -e "net.ipv4.conf.all.log_martians = 1" >> /etc/sysctl.conf
sudo echo -e "net.ipv4.ip_forward = 0" >> /etc/sysctl.conf
sudo echo -e "net.ipv4.conf.default.accept_source_route = 0" >> /etc/sysctl.conf
sudo echo -e "net.ipv4.tcp_syncookies = 1" >> /etc/sysctl.conf
sudo echo -e "net.ipv4.tcp_synack_retries = 5" >> /etc/sysctl.conf
sudo echo -e "net.ipv4.conf.all.send_redirects = 0" >> /etc/sysctl.conf
sudo echo -e "net.ipv4.conf.default.send_redirects = 0" >> /etc/sysctl.conf
sudo echo -e "net.ipv4.conf.all.secure_redirects = 0" >> /etc/sysctl.conf
sudo echo -e "net.ipv4.icmp_echo_ignore_broadcasts = 1" >> /etc/sysctl.conf
sudo echo -e "net.ipv4.tcp_syncookies = 1" >> /etc/sysctl.conf
sudo echo -e "net.ipv4.conf.all.rp_filter = 1" >> /etc/sysctl.conf
sudo echo -e "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf
sudo echo -e "net.ipv6.conf.default.disable_ipv6 = 1" >> /etc/sysctl.conf
sudo echo -e "net.ipv6.conf.lo.disable_ipv6 = 1" >> /etc/sysctl.conf
sudo sysctl -p
cat /proc/sys/net/ipv6/conf/all/disable_ipv6
