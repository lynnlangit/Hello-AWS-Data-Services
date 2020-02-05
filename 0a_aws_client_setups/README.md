# Client Tools for AWS

## AWS Console / WebUI

For study
- Use AWS WebUI / console
    - Create dedicated AWS account, login to AWS Web UI at https://console.aws.amazon.com/
    - Create AWS Budget (and alert) for your daily service spending limit
    - (Optional) create non-root IAM user and login with those user credentials
    - (Optional) add MFA (multi-factor authentication) to user account 

## Tools for Scripts and Code

- Main AWS Tools site -- https://aws.amazon.com/tools/

- Use AWS cli
    - download the `aws cli` for your OS -- https://aws.amazon.com/cli/
    - create not-root IAM user with credentials - download credential file
    - verify Python version 
    - configure `aws cli` using IAM user credentials
    - (Optiona) create one or more AWS profiles (stored in ~/.credential file)
    - (Optional) download `aws cli shell` which includes auto-complete -- https://github.com/awslabs/aws-shell

- Use AWS SDK
    - Select your language, i.e. node, Python, etc...
    - Download the AWS SDK for your language - for node -- https://aws.amazon.com/sdk-for-node-js/
    - (Alternate) create an AWS Cloud9 IDE instance -- https://aws.amazon.com/cloud9/

- Use 3rd party client
    - For RDS SQL 
        - can use MySQLWorkbench (for RDS Aroura, MySQL)
        - can use SQLOperationsStudio (for RDS SQL Server)
    - For multiple database - can use trial version of Navicat