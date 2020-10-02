![AWS Data Services and Machine Learning](https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/aws-data-services.png)

## AWS Data Services

This is a set of scripts and instructions designed to help you quickly set up and load key AWS data services for demo and learning purposes.  The goal is to get a 'Hello World' implementation set up quickly. These samples use the AWS Query Editors for RDS and Redshift.  I recommend using the included Jupyter Notebook to quickly connect to EMR.  Samples include the following AWS Data Services:  
  - **AWS RDS Aurora and MySQL**
    - Creates, load and SQL queries for **Northwind** database tables
    - For RDS Aurora Serverless use AWS RDS Query Editor
  - **AWS Redshift and Redshift Spectrum**
    - Creates, loads and SQL DW queries for **Customers star schema** source database tables
    - use AWS Redshift Query Editor
  - **AWS EMR with Spark**
    - Creates and run test **CalcPi** PySpark job on cluster
    - use AWS EMR Jupyter Notebook
  - **AWS Athena**
    - Creates, loads and SQL queries for **ElbLogs** (AWS sample) using service
    - use AWS Athena Console
  - **AWS DynamoDB**
    - Creates, adds and NoSQL query for **Music** JSON data into table
    - use AWS DynamoDB console
  - **AWS Kinesis**
    - including Kinesis Analytics
    - use AWS Kinesis console
 
Includes simple scripts as follows:
   - awscli scripts 
   - AWS SDK node.js scripts 
  
## AWS Machine Learning 

Includes information about using machine learning servers and cloud services, including the following:  
  - AWS EC2 custom AMI for Machine Learning 
  - AWS SageMaker
  - Databricks (Managed Spark) on AWS showing ML MxNet
  - AWS EMR Spark with SparkML

NOTES on the examples:
   - All are set to run in the 'us-east-1' AWS region.
   - All were prepared on an OSX laptop.
   - Machine Learning 'Hello World' example is `mnist` (probablistic image classification -> into 10 classes using images of handwritten digits)

## Learn More

- **AWS Cost Control** - course on LinkedIn Learning and companion GitHub Repo at [link](https://github.com/lynnlangit/aws-cost-control)
- **AWS Security Info** - link to security resource by service for AWS at [link](https://docs.aws.amazon.com/security)
 - More courses - I have a large number of cloud and data courses on LinkedIn Learning.  Below is a summary chart of my most popular courses for AWS Data topics.  Just search on the course title (or my name) on the [LinkedIn Learning site](https://www.linkedin.com/learning/search?entityType=COURSE&keywords=lynn%20langit) to view these courses.

![AWS top courses](https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/top.png)
