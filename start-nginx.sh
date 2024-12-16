#!/bin/bash
SERVICE=$1
service $1 status
if [ $? -eq 0 ]
then
echo "The Service ${SERVICE} is Already Up and Running"
else
service $1 start
fi
