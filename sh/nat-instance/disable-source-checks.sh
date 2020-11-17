#!/bin/bash

INSTANCE_ID=`wget -q -O - http://169.254.169.254/latest/meta-data/instance-id`
REGION=`wget -q -O - http://169.254.169.254/latest/dynamic/instance-identity/document | jq --raw-output '.region'`

aws ec2 modify-instance-attribute --region ${REGION} --instance-id ${INSTANCE_ID} --source-dest-check "{\"Value\": false}"
