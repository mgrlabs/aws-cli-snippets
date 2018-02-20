#List all instances within a given account
aws ec2 describe-instances --query 'Reservations[].Instances[].[Placement.AvailabilityZone,InstanceId,InstanceType,Platform,State.Name,Tags[?Key==`Name`] | [0].Value]' --output table
