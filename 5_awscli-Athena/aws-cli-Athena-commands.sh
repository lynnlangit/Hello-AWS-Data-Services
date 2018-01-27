# RUN the Athena TUTORIAL to create the 'elb_logs' table BEFORE running this query

# for Athena - query the data in a S3 bucket
aws athena start-query-execution --query-string "SELECT * FROM elb_logs WHERE elb_response_code = '200' AND elb_name = 'elb_demo_007';" --result-configuration "OutputLocation=s3://run-athena-lynnlangit/output/"

# Get execution GUID
# <replace this value with your value> -> "06ecb084-871e-4854-8d29-691735127752"

 # Use the GUID to get the details
aws athena get-query-execution --query-execution-id "06ecb084-871e-4854-8d29-691735127752" 

 




