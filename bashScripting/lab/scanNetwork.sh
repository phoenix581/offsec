#!/bin/bash
# start datetime
date
rm pingResponse
rm $1*

# Loop IP Range, ping ip and save reponses to file
for i in {1..254} 
do
  ping -c 1 -W 1 $1.$i | grep "time=" | egrep -o '([0-9]{1,3}\.){3}[0-9]{1,3}' >> pingResponse
done

# Loop ip's in file and run host and nmap command saving results to files
for address in $(cat pingResponse)
do
  host $address > $address"_Host"
  nmap -n -O $address > $address"_Nmap"
done

# end datetime
date
