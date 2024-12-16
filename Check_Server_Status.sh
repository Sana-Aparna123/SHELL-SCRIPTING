#!/bin/bash
#Testing the connectivity of all 50 servers
for SERVER in $(cat servers.txt); do
    ping -c 1 $SERVER >/dev/null
    if [ $? -eq 0 ]; then
        echo "$SERVER is reachable"
    else
        echo "$SERVER is not reachable"
    fi
done
