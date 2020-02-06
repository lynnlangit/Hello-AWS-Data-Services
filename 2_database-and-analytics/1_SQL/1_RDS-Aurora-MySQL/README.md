# About AWS Redshift

## Use AWS RDS Aurora Serverless Query Editos

Setup your Database with these settings
- creation -> standard create
- configuration -> amazon aurora
- edition -> MySQL 5.6 or better
- instance size -> Serverless
- templates -> dev/test

Wait for create to be `ready`, then `Modify`
- Network & Security -> enable `Data API`
- click `update`

Connect to RDS Query Editor
- query editor window will open