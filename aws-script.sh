#!/bin/bash
REGION=$1 # positional parameter
aws ec2 describe-vpcs --region REGION | jq ".Vpcs[].VpcId" -r 