#!/bin/bash

function all_arg {
echo "Wait for scanning, it can take some time..."
nmap -sn 192.168.31.0/24 | grep -e "for" | cut -d ' ' -f 5-
echo "Scan complete"
}

function target_arg {
echo "List of opened tcp ports:"
netstat -tln | grep -e "tcp" | cut -c 1-4,20-41
}

if [ -n "$1" ]
then
case "$1" in
--all) all_arg ;;
--target) target_arg ;;
esac
else
echo "You can use the --all key to get the IPs and symb names of all hosts."
echo "Also you can use --tagret key to get a list of all opened ports in system"
fi