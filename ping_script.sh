#!/bin/bash
#reference: https://www.unixmen.com/simple-bash-script-for-pinging-hosts/#:~:text=To%20execute%20this%20script%2C%20open,like%20shown%20in%20Figure%202.&text=The%20output%20is%20shown%20in%20Figure%203.


read -p "I need ips!: " a 

function pingcheck
{ 
        for ip in `cat $a`
        do
          ping=`ping -c1 $ip | grep bytes | wc -l`
          if [ "$ping" -gt 1 ];
          then 
              echo "$ip is up"
          else
              echo "$ip is not up..."
          fi
        done
}

pingcheck
