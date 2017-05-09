#Usage:
#First param is an instance id e.g. i-09712fe9ad
#Second param is the region e.g. eu-west-1
#Does not catch errors

ssh gavin@$(aws ec2 describe-instances --instance-ids $1 --region $2 | jq -r '.Reservations[0].Instances[0].NetworkInterfaces[0].PrivateIpAddress')