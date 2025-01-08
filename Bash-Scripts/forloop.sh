#!/bin/bash

BUCKETS="devbucket1238901 devbucket654321346 devbucket098776787668"

for x in $BUCKETS
do
aws s3 $1 s3://$x
done
