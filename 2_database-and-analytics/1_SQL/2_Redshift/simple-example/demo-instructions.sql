--From this blog post
--https://aws.amazon.com/blogs/big-data/query-your-amazon-redshift-cluster-with-the-new-query-editor/

/* Create a Redshift cluster subnet group
--add all subnets from your VPC
--create a trial size Redshift cluster

/* Setup cluster with IAM role, 
--if you forget to do this when you first create your cluster
--just create an IAM role with appropriate permissions
--modify your cluster to apply the new role
--and reboot cluster to apply the new role settings immediately

/* Connect to AWS Redshift Query Editor
--use `dev` which is the default db 
--and your clustername, admin user and password

/*create schema*/
CREATE SCHEMA myinternalschema

/* Create table */
CREATE TABLE myinternalschema.event(
eventid integer not null distkey,
venueid smallint not null,
catid smallint not null,
dateid smallint not null sortkey,
eventname varchar(200),
starttime timestamp);

/* Load Data from public S3 bucket */
COPY myinternalschema.event FROM 's3://aws-redshift-spectrum-sample-data-us-east-1/spectrum/event/allevents_pipe.txt'
iam_role 'arn:aws:iam::069361131403:role/redshiftDemo'
delimiter '|' timeformat 'YYYY-MM-DD HH:MI:SS' region 'us-east-1';

/* View a snippet of the same dataset in myinternalschema */
SELECT * FROM myinternalschema.event
LIMIT 10;
