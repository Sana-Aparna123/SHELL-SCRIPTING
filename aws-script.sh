#!/bin/bash
echo "you have given $# to this script"
REGION1=$1 # positional parameter
REGION2=$2
echo "Lets gets the vpcs for ${REGION1}"
aws ec2 describe-vpcs --region $1 | jq ".Vpcs[].VpcId" -r 

echo "Lets gets the vpcs for ${REGION2}"
aws ec2 describe-vpcs --region $2 | jq ".Vpcs[].VpcId" -r 
# aws ec2 describe-vpcs --region $1 | jq -j '.Vpcs[].VpcId + " " ,.Vpcs[].CidrBlock + "\n"' -r
# jq -r '"Name: \(.name), Age: \(.age)"' sample_data.json


if [ $# -lt 2 ]; then
    echo "Usage: $0 <region1> <region2> ..."
    exit 1
fi

for REGION in "$@"; do
    echo "Lets gets the vpcs for ${REGION}"
    aws ec2 describe-vpcs --region ${REGION} | jq ".Vpcs[].VpcId" -r 
done