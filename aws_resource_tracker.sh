#!/bin/bash

#################

#Author:Porkalai Selvi.S
#Date: 26.08.2023

#################
  set -x

#list S3 Buckets
echo "print lists of S3buckets"
aws s3 ls

#list EC2 instances
echo "print lists of Ec2 Instances"
aws ec2 describe-instances | jq. '.Reservations[].Instances[].InstanceId'

#list lambda functions 
echo "print lists of lambda functions"
aws lambda list-functions

#list iam users
echo "print lists of iam users"
aws iam list-users
