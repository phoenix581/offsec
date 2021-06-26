#!/bin/bash

#sudo nmap -A -p80 --open 10.11.1.0/24 -oG nmap-scan_10.11.1.1-254

#for ip in $(cat nmap-scan_10.11.1.1-254 | grep 80 | grep -v "Nmap" | awk '{print $2}')
#  do cutycapt --url=$ip --out=$ip.png
#done

echo "<HTML><BODY><BR>" > web.html
ls -1 *.png | awk -F : '{ print $1":\n<BR><IMG SRC=\""$1""$2"\" width=600><BR>"}' >> web.html
echo "</BODY></HTML>" >> web.html

