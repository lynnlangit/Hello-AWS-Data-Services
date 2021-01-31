# Client Tools for AWS

## AWS Console / WebUI or Cloud Shell

For study purpose, it's generally quicker and simpler to use browser-based tools.  These tools require significantly less configuration and setup time than the alternative (which would be to download tools to your laptop).  For this reason I use (and show) browser-based tools in the majority of my AWS courses.  

- Use **AWS Console**
    - Create dedicated AWS account, login to AWS Web UI at https://console.aws.amazon.com/
    - Create AWS Budget (and alert) for your daily service spending limit
    - (Optional) create non-root IAM user and login with those user credentials
    - (Optional) add MFA (multi-factor authentication) to user account 
    
 - Use **AWS integrated SQL query editor(s) or notebooks**
    - Aurora Serverless (RDS) now includes an integrated web-based SQL query editor 
    - DynamoDB now includes the PartiSQL integrated web-based table query editor 
    - Redshift includes a Query Editor 
    - EMR now includes Jupter notebook interface (optional)
    
 - Use **AWS cloud shell**
    - AWS CloudShell is a browser-based shell that makes it easy to securely manage, explore, and interact with your AWS resources using the AWS CLI or SDKs
    - CloudShell is pre-authenticated with your console credentials
    - Common development and operations tools are [pre-installed](https://docs.aws.amazon.com/cloudshell/latest/userguide/vm-specs.html), so no local installation or configuration is required, you can install your own tools as well
    - Includes 1 GB of persistent storage per Region (store scripts, files, configuration preferences, and additional tools in your home directory)
    - Cloud Shell Quick Tips -[link](https://dev.to/lynnlangit/aws-cloud-shell-quick-tips-1n5o)
    
---

## Download AWS Tools (Scripts and Code)

Main AWS Tools site -- https://aws.amazon.com/tools/.  Here you can download tools to your laptop.  Most tools have dependencies (i.e. Python, Java...) and required configuration.  Tool installations differ depending on the OS on your laptop (i.e. Mac, Windows, ....), be sure to carefully read tool installation guidance for your local setup.  

- Use **AWS cli**
    - download the `aws cli` for your OS -- https://aws.amazon.com/cli/
    - create not-root IAM user with credentials - download credential file
    - verify Python version 
    - configure `aws cli` using IAM user credentials
    - (Optiona) create one or more AWS profiles (stored in ~/.credential file)
    - (Optional) download `aws cli shell` which includes auto-complete -- https://github.com/awslabs/aws-shell

- Use **AWS SDK**
    - Select your language, i.e. node, Python, etc...
    - Download the AWS SDK for your language - for node -- https://aws.amazon.com/sdk-for-node-js/
    - (Optional) if using VSCode, there are a number of useful AWS add-ins
        - use `aws cli configure` for quick configuration of login credentials
        = use `aws-cloudformation-yaml` to lint CF templates
        - use `VSCode Terraform AWS` to link TF templates, also `Terraform Autocomplete`
        - use `Stackery Serverless Tools` to draw executable infrastructure
        - use `AWS Amplify API` to add Amplify API code snippets
    - (Alternate) create an AWS Cloud9 IDE instance -- https://aws.amazon.com/cloud9/

- Use **3rd party** client tools
    - For RDS SQL 
        - can use MySQLWorkbench (for RDS Aroura, MySQL)
        - can use SQLOperationsStudio (for RDS SQL Server)
    - For multiple database types - you can use trial version of the 3rd party Navicat tool 
