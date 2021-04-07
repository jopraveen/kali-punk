#!/usr/bin/python3
import re
import subprocess
from os import system as cmd

# getting IP's and saving it in a file
with open('ip.txt','w') as f:
        ip = subprocess.run(['ip', 'a'],stdout=f,text=True)

# finding tun0 ip
txt_file = open('ip.txt','r')
IP = txt_file.read()
pattern = re.compile("[10]+\.+\d\d+\.+\d\d+\.+\w{2,3}")
search_tun0 = pattern.findall(IP)
if len(search_tun0) > 0:
	tun0_IP = search_tun0[0]
	print(tun0_IP)
else:
	print("offline")
