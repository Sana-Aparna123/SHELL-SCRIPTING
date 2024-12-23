#!/bin/bash
delete_ebs_vol() {
    vols=$(aws ec2 describe-volumes --region $1 | jq ".Volumes[].VolumeId" -r)
    for vol in $vols; do
        size=$(aws ec2 describe-volumes --volume-ids $vol --region $1 | jq ".Volumes[].Size" -r)
        state=$(aws ec2 describe-volumes --volume-ids $vol --region $1 | jq ".Volumes[].State" -r)
        if [ ${size} -gt 5 -a ${state} == 'in-use' ]; then
            echo "The Volume $vol is an valid volume with size of ${size} and its attached.Don't delete it."
        else
            echo "Deleting $vol in region  $1"
            aws ec2 delete-volume --volume-id $vol --region $1
        fi
    done
}

# delete_ebs_vol $1
region_list=$(aws ec2 describe-regions | jq ".Regions[].RegionName" -r | wc -l)
REGIONS=$(aws ec2 describe-regions | jq ".Regions[].RegionName" -r)
echo "we have total number of  $region_list regions."
for REGION in ${REGIONS[@]}
do
echo "Lets deleting the volume for ${REGION}"
delete_ebs_vol $REGION
done


#cronbtab -l
#crontab -e -->choose /bin/nano and add the below lines
#It will run continuosly based on the time interval that we have given.
#* * * * * sudo bash /root/ebs.sh
#* * * * * sleep 30 && sudo bash /root/ebs.sh
