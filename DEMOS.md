# AWS Data Services

This Repo includes a set of scripts and instructions designed to help you quickly set up and load key AWS data services for demo and learning purposes as a companion to my LinkedIn Learning AWS courses on these topics.  The goal is to get a 'Hello World' implementation set up quickly. These samples use the AWS Query Editors for RDS and Redshift.  I recommend using the included Jupyter Notebook to quickly connect to EMR.  Examples often includes simple scripts (`awscli` scripts  or AWS SDK `node.js` scripts). Samples include the following AWS Data Services and more:   

### Database (SQL)
  - **AWS RDS Aurora and MySQL**
    - Creates, load and SQL queries for **Northwind** database tables
    - For RDS Aurora Serverless use AWS RDS Query Editor
  - **AWS Redshift and Redshift Spectrum**
    - Creates, loads and SQL DW queries for **Customers star schema** source database tables
    - use AWS Redshift Query Editor  

### Database (NoSQL) or Streams  
  - **AWS DynamoDB**
    - Creates, adds and NoSQL query for **Music** JSON data into table
    - use AWS DynamoDB console
  - **AWS Kinesis**
    - including Kinesis Analytics
    - use AWS Kinesis console  

### Data Lake      
  - **AWS EMR with Spark**
    - Creates and run test **CalcPi** PySpark job on cluster
    - use AWS EMR Jupyter Notebook
  - **AWS Athena**
    - Creates, loads and SQL queries for **ElbLogs** (AWS sample) using service
    - use AWS Athena Console

---
  
## AWS Machine Learning 

Includes information about using machine learning servers and cloud services, including the following:  
  - **Amazon Machine Learning AMI (image)** 
    - on EC2 instances 
    - GPUs optional
  - **AWS SageMaker** 
    - using managed Juptyer Notebook instances
  - **Databricks AWS Community Edition**
    - implements managed Spark
    - on AWS
    - showing MxNet and other algorithms
  - **AWS EMR** 
    - with Apache Spark with Spark (and SparkML)

NOTES on the examples:
   - All are set to run in the 'us-east-1' AWS region.
   - All were prepared on an OSX laptop.
   - Machine Learning 'Hello World' neural network (NN algorithm) example is...
      - `mnist` (probablistic image classification -> into 10 classes using images from handwritten digits) --OR--
      - `fashion mnist` (probablistic image classification -> into 10 classes using from grey-scale images of types of clothing)
   
---

