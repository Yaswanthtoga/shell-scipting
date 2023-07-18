#!/bin/bash

######################
# Author : Yaswanth
# Date : 18th of July
#
# Version : v1
#
# This Script used for aws resource tracking
#####################


# AWS s3
# AWS EC2
# AWS Lambda Functions
# AWS IAM Users

set -x # Debugging

# list of s3 buckets
aws s3 ls > resource

# list of ec2 instances
aws ec2 describe-instances >> resource

# list lambda
aws lambda list-functions >> resource

# list IAM users
aws iam list-users >> resource
