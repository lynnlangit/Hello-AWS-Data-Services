# AWS Database

![AWS DocumentDB](https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/documentdb.png)

Key Links
- Documentation for this service at https://aws.amazon.com/documentdb/
- Main AWS Database blog at https://aws.amazon.com/blogs/database/
- Main AWS Analytics blog at https://aws.amazon.com/blogs/big-data/
- Main AWS Architecture blog at https://aws.amazon.com/blogs/architecture/

## Client

- can use MongoDB Compass - download from https://www.mongodb.com/download-center/compass
- TLS is enabled by default for DocumentDB
    - see step 3b in the AWS Docs - https://docs.aws.amazon.com/documentdb/latest/developerguide/getting-started.connect.html
    - to connect with an EC2 client
        - dowload MongoDB compass
        - must be in same VPC as DocumentDB
        - must use SSL with `Server Validation`
            download file `RDS-COMBINED-CA-BUNDLE.PEM` to EC2 instance
        - use SSH tunnel to EC2 instance - see this StackOverflow [link](https://stackoverflow.com/questions/54642084/unable-to-connect-to-aws-documentdb-using-mongodb-compass-no-option-to-pass-ssl)
