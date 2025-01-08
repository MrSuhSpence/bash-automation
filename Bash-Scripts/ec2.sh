#!/bin/bash
EC2=$(aws ec2 describe-instances --instance ids i-04422bc3c57a8be53 | grep running | cut -c 34-40)
if [ $EC2 = running ]
then 
echo "Your EC2 is running"
else
echo "It isn't, I'll start it up for you."
aws ec2 start-instances --instance-ids i-04422bc3c57a8be53
fi
