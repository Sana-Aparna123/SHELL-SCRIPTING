#!/bin/bash
if [ $# -gt 0 ]; then
    SERVICE=$1
    service $1 status
    if [ $? -eq 0 ]; then
        echo "The Service ${SERVICE} is Already Up and Running"
    else
        service $1 start
        echo "Started ${SERVICE} Successfully"
    fi
else
    echo "you have given $# arguments to this script.So please provide atleast one service as an Argument"
fi
