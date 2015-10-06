#!/bin/bash
ip_address=`ifconfig wlan0 | grep "inet " | awk -F'[: ]+' '{ print $4 }'`
network_name=`iwgetid -r`
curl --data "ip_address=$ip_address&network_name=$network_name" "http://fryer.ee.ucla.edu/rest/api/ip_address/post/"
