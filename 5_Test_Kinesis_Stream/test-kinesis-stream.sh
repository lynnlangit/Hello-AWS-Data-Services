# set up data stream
# 1. Create Kinesis data stream 'demo-data' with 2 shards

# set up firehose delivery stream
# 2. Createa Firehose delivery stream 'demo-delivery', select 'demo-data' as source,
#         select desintation as S3, create new bucket, create IAM role

# set up application
# 3. Create Kinesis application 'demo-app', connect to source 'demo-data',
#          create/use IAM role, try 'schema discover' -> IT WILL FAIL (no data)

# run data through kinesis application using test application
# use 'https://awslabs.github.io/amazon-kinesis-data-generator/web/producer.html'
# 4. Use Test -> can use 'schema discovery' AFTER you start loading the stream
#           click CF template button to create Cognito user and pool
#           fill out CF params -> 'create', wait unitl done, 
#           copy CF output for KDG URL, paste into browser, then LOGIN 
#           with user 'admin' and password 'password'
#           change the AWS region, copy example template (2nd one)
#           call the template 'names'  click 'test template'
#           click 'send data'
#           retry 'schema discovery', it's successful, add to stream

# run SQL analytics on the stream
# 5. Run SQL Analytics, 'start application'
#           show results at bottom (from stream) 'source sql_stream_001'
#           scroll up and click on 'sample SQL queries'

# finish Kinesis application configuration
# 6. Create new stream (as destination), refresh and select it as 'destination'

# NOTE: Kinesis Video streams do NOT function as part Kinesis Application