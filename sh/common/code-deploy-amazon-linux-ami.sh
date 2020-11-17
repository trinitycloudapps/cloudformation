#!/bin/bash

REGION=`wget -q -O - http://169.254.169.254/latest/dynamic/instance-identity/document | jq --raw-output '.region'`

yum install -y ruby wget

cd /home/ec2-user
wget https://aws-codedeploy-${REGION}.s3.${REGION}.amazonaws.com/latest/install

chmod +x ./install
./install auto

service codedeploy-agent start
service codedeploy-agent status
