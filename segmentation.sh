#!/bin/bash

array=( This is where you can put up your host or ip address from where you will login and run nmap scan on target servers - applicable from each in-scope infrastructure assets to defined out of scope infrastructure assets and vice-versa)

for i in "${array[@]}"
do
            echo $i
            sshpass -f 'path_To_PasswordFile' ssh username@$i 'sudo nmap scan'
	    sleep 10
done
