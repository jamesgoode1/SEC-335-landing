#!/bin/bash

network_prefix=$1
dns_server=$2
for ip in {1..254}; do
    nslookup "$network_prefix.$ip" "$dns_server" | grep "name =" 
done
