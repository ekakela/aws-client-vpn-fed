#!/usr/bin/env bash
set -x 

aws ec2 authorize-client-vpn-ingress --client-vpn-endpoint-id $CLIENT_VPN_ID --target-network-cidr $TARGET_CIDR --authorize-all-groups

aws ec2  apply-security-groups-to-client-vpn-target-network--client-vpn-endpoint-id $CLIENT_VPN_ID --vpc-id $VPC_ID --security-group-ids $SG_ID