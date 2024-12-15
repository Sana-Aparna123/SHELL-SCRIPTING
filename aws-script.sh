#!/bin/bash
REGION = $1 # positional parameter
aws ec2 describe-vpcs --region $1 | jq "Vpcs[].VpcId" -r 