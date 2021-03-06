--From this blog post
--https://aws.amazon.com/blogs/big-data/query-your-amazon-redshift-cluster-with-the-new-query-editor/

--Sample data here
--https://github.com/lynnlangit/Hello-AWS-Data-Services/tree/master/0b_sample_data/tickitdb

/* Create a Redshift cluster subnet group
--add all subnets from your VPC
--create a trial size Redshift cluster

/* Setup cluster with IAM role, 
--if you forget to do this when you first create your cluster
--just create an IAM role with appropriate permissions (must include S3 READ-ONLY to be able to load data from S3)
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
COPY myinternalschema.event FROM 's3://csv-demo-lynn/tickitdb/allevents_pipe.txt'
iam_role 'arn:aws:iam::586641480003:role/aws-service-role/redshift.amazonaws.com/AWSServiceRoleForRedshift'
delimiter '|' timeformat 'YYYY-MM-DD HH:MI:SS' region 'us-east-1';

/* Load Data row-by-row -> pattern */
insert into myinternalschema.event
(eventid, venueid, catid, dateid, eventname, starttime)
values ('3', '304', '8', '1851', 'tomorrow', '2008-01-25 14:30:00');

/* View a snippet of the same dataset in myinternalschema */
SELECT * FROM myinternalschema.event
LIMIT 10;
