MY_IP=$(curl --silent https://checkip.amazonaws.com)
echo "Your IP is ${MY_IP}"

aws ec2 modify-security-group-rules \
    --group-id sg-0777829b1e627e0e0 \            /* <----- Security Group ID */
    --security-group-rules SecurityGroupRuleId=sgr-0baf5cdc4882737c3,SecurityGroupRule="{IpProtocol=-1,CidrIpv4=${MY_IP}/32}"  /* ID Of Your Security Group Rule and the ip protocol of the rule*/

