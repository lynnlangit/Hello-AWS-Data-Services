**IMPORTANT** This Repo is a companion to my LinkedIn Learning courses - services covered are shown in the diagram below  

- **'AWS Data Services' - [link](https://www.linkedin.com/learning/amazon-web-services-data-services-2)**
- **'AWS Machine Learning' - [link](https://www.linkedin.com/learning/amazon-web-services-machine-learning-essential-training)**


![AWS Data Services and Machine Learning](https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/aws-data-services.png)



## AWS Data Services

This is a set of scripts and instructions designed to help you quickly set up and load key AWS data services for demo and learning purposes.  The goal is to get a 'Hello World' implementation set up quickly. These samples use the AWS Query Editors for RDS and Redshift.  I recommend using the included Jupyter Notebook to quickly connect to EMR.  Examples often includes simple scripts (`awscli` scripts  or AWS SDK `node.js` scripts). Samples include the following AWS Data Services and more:   

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
  - **Amazon Machine Learning AMI (image)** on EC2
  - **AWS SageMaker** using managed Juptyer Notebook instances
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

## Learn More AWS from Lynn 

### Code and Notes

- My example AWS GitHub Repos
  - **'hello-aws-data-services'** - [link](https://github.com/lynnlangit/Hello-AWS-Data-Services)
  - **'aws-cost-control'** - [link](https://github.com/lynnlangit/aws-cost-control)
  - **'learning-hadoop-and-spark'** - [link](https://github.com/lynnlangit/learning-hadoop-and-spark)
  - **'learning-nosql'** - [link](https://github.com/lynnlangit/learning-nosql)
- My Medium articles on AWS topics - [link](https://medium.com/search?q=aws%20langit)  

### Articles, Screencasts and Courses

- My YouTube AWS Serverless Playlist for **serverless AWS** - [link](https://www.youtube.com/playlist?list=PL4Q4HssKcxYsa2A2D2_Zln2tkL4v4-ymO)
- My YouTube general AWS Playlist for **general AWS** - [link](https://www.youtube.com/playlist?list=PL93B06369FAD34284)
- My AWS Community Hero award(for Data) - [link](https://aws.amazon.com/developer/community/heroes/lynn-langit/?did=dh_card&trk=dh_card)
- **My LI_L courses** - I have a large number of cloud and data courses on LinkedIn Learning.  Below is a summary chart of my most popular courses for AWS Data topics.  Just search on the course title (or my name) on the [LinkedIn Learning site](https://www.linkedin.com/learning/search?entityType=COURSE&keywords=lynn%20langit) to view these courses.

![AWS top courses](https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/top.png)
