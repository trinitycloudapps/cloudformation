#!/bin/bash

yum install -y awslogs

systemctl start awslogsd
systemctl enable awslogsd.service
