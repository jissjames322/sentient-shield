#!/bin/bash
sudo /var/ossec/active-response/bin/firewall-drop add 10.10.10.10
sudo iptables -L -n -v

