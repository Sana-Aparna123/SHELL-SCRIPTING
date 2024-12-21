#!/bin/bash
DATA=$(cat ipaddress.log)S
for IPADDRESS in $DATA; do
    if [[ $IPADDESS =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
        echo "$IPADDRESS is valid IP Address."
    else
        echo "$IPADDRESS is invalid IP Address."
    fi
done
