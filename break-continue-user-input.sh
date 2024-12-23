#!/bin/bash
    for WEBSITE in $(cat websites); do
        timeout 3 netcat -zv $WEBSITE 443 >>/dev/null 2>&1
        if [ $? -eq 0 ]; then
            echo "The Server $WEBSITE is Up and Running."
        else
            echo "The Server $WEBSITE is Down or Invalid domain."
            break
            # continue
        fi
    done
