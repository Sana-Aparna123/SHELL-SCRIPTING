#!/bin/bash
if [ $# -gt 0 ]; then
REGIONS=$@
for REGION in $REGIONS
do
    echo "lets get the vpcs dor ${REGION}"
    aws ec2 describe-vpcs --region ${REGION} | jq ".Vpcs[].VpcId" -r  
done   
else
    echo "you have given $# arguments to this script.So please provide atleast one region based on arguments"
fi

# if [ $# -gt 0 ]; then
# for REGION in $@
# do
#     echo "lets get the vpcs dor ${REGION}"
#     aws ec2 describe-vpcs --region ${REGION} | jq ".Vpcs[].VpcId" -r  
# done   
# else
#     echo "you have given $# arguments to this script.So please provide atleast one region based on arguments"
# fi