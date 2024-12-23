#!/bin/bash
function demo {
    function1
    echo "welcome to sample demo function"
}

function1() {
    function2
    echo "Welcome to funtion1"
}

function2() {
    function3
    echo "Welcome to function2"
}

function3() {
    #calling the function inside the function

    echo "Welcome to function3"
}
#calling the function
demo


Get_VPC(){
    echo "lets gets vpcs for $1 region"
    list_vpc=$(aws ec2 describe-vpcs --region $1 | jq ".Vpcs[].VpcId" -r)
    for vpc in $(echo $list_vpc); do
        echo "The VPC ID is:$vpc"
        echo "=========================="
    done
}

#Get_VPC $1

for REGION in $@; do
    Get_VPC $REGION
done    

