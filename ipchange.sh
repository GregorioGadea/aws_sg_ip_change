#!/bin/bash

MY_IP=$(curl --silent https://checkip.amazonaws.com)
echo "Your IP is ${MY_IP}"

aws ec2 modify-security-group-rules \
    --group-id sg-09c03ce5bcd3906e4 \
    --security-group-rules SecurityGroupRuleId=sgr-05fc3d27f978aadc1,SecurityGroupRule="{IpProtocol=-1,CidrIpv4=${MY_IP}/32}"