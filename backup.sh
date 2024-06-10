# ami backup

#!/bin/bash
var=$(date +%d-%m-%Y-%H-%M-%S)
aws ec2 create-image --instance-id i-0693be27bc2d82684  --name web-$var --no-reboot --description "new-ami-sep"

# snapshot backup

#!/bin/bash
var=$(date +%d-%m-%Y-%H-%M-%S)
aws ec2 create-snapshot --volume-id vol-00ced1b184f5f8793 --description volume-backup-$var --tag-specifications 'ResourceType=snapshot,Tags=[{Key=Name,Value=java-prod}]’
