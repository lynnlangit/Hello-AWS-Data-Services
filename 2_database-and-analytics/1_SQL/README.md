# AWS SQL Choices

## Relational or DW

Generally there are two categories - relational or data warehouse.
The graphic below outlines the differences.  Of note, is that AWS is adding serverless capabilities to both of these services.

<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/aws-sql.png" width=800>

---

## for RDS - pick your DB engine

There are two cateogories of relational database engines for RDS - open source or commercial (the latter requires a commercial DB license).  Research the features and select the DB platform based on your application's needs. The list below summarizes these choices:

- Open Source

  - **Amazon Aurora** 
    - highly optimized open source (for AWS) 
    - choose RDS or Serverless
    - Serverless best practices - [link](https://aws.amazon.com/blogs/database/best-practices-for-working-with-amazon-aurora-serverless/)
    - Serverless has some limitations - [link](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-2.limitations.html)
  - **MySQL** - dominant in open source
  - **Postgres** - alternative, viable open source choice
  - **MariaDB** - evolution of MySQL
  
- Commercial

  - **SQL Server** 
    - must select version and edition
    - requires RDBMS license
  - **Oracle** 
    - must select version and edition
    - requires RDBMS license
