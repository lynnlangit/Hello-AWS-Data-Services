# create IAM role (and policy) for DAX to access DynamoDB
# edit ARNs in the *.json files
# https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DAX.create-cluster.cli.create-service-role.html
aws iam create-role --role-name DAXServiceRoleForDynamoDBAccess --assume-role-policy-document file://service-trust-relationship.json
aws iam create-policy --policy-name DAXServicePolicyForDynamoDBAccess --policy-document file://service-role-policy.json
aws iam attach-role-policy --role-name DAXServiceRoleForDynamoDBAccess --policy-arn arn
 
# Create a subnet group (can use default VPC)
# Replace 'vpcID' and 'subnet-111...' with your values
aws ec2 describe-vpcs
aws ec2 describe-subnets --filters "Name=vpc-id,Values=vpcID" --query "Subnets[*].SubnetId"
aws dax create-subnet-group --subnet-group-name my-subnet-group --subnet-ids subnet-11111111 subnet-22222222 subnet-33333333 subnet-44444444
 
# Create a DAX cluster
# Replace the roleARN with your value
aws iam get-role --role-name DAXServiceRoleForDynamoDBAccess --query "Role.Arn" --output text
aws dax create-cluster \
    --cluster-name mydaxcluster \
    --node-type dax.r4.large \
    --replication-factor 3 \
    --iam-role-arn roleARN \
    --subnet-group my-subnet-group \
    --sse-specification Enabled=true \
    --region us-west-2
aws dax describe-clusters
 
# Configure security group inbound rules
# Replace 'vpcID' and 'sgID' with your values
aws ec2 describe-security-groups --filters Name=vpc-id,Values=vpcID,Name=group-name,Values=default \
    --query "SecurityGroups[*].{GroupName:GroupName,GroupId:GroupId}"
aws ec2 authorize-security-group-ingress --group-id sgID --protocol tcp --port 8111
 
# Setup a sample DAX/DynamoDB client application
# Using Node.js at https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/DAX.client.run-application-nodejs.html