#!/bin/bash

function subnets {
    VPC=$1
    REGION=$2
    echo "****************************************************************************"
    echo "**Getting subnets info for vpc $VPC in region $REGION**"
    echo "****************************************************************************"
    aws ec2 describe-subnets --filters "Name=vpc-id,Values=$VPC" --region $REGION | jq ".Subnets[].SubnetId" -r
    echo "------------------------------------------------------------------------------"
}

function sg {
    VPC=$1
    REGION=$2
    echo "****************************************************************************"
    echo "**Getting Security group info for vpc $VPC in region $REGION**"
    echo "****************************************************************************"
    aws ec2 describe-security-groups  --filters "Name=vpc-id,Values=$VPC" --region $REGION | jq ".SecurityGroups[].GroupId"  -r
    echo "------------------------------------------------------------------------------"
}

vpcs() {
    for REGION in $@;do
        echo "Getting vpcs list for regions $REGION"
        vpcs=$(aws ec2 describe-vpcs --region "${REGION}" | jq ".Vpcs[].VpcId" -r)
        echo $vpcs
        echo "------------------------------------------------------------------------------"
        for VPC in $vpcs; do
           subnets $VPC $REGION
        done
        for VPC in $vpcs; do
           sg $VPC $REGION
        done
    done
}

vpcs $@