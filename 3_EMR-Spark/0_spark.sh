# Set security group rule for SSH to allow your machine to connect to EMR master

# Open terminal
# Move (cd) to *.pem path
# Set permissions to makes key publically viewable
chmod 400 mykey.pem

# Connect to EMR master node 
# Update to reflect path to your .pem key 
# Connect to your IP for EMR
ssh -i /Users/lynnlangit/Downloads/demo-emr.pem hadoop@ec2-34-224-6-68.compute-1.amazonaws.com

# Start spark shell in SSH terminal window
spark-shell
# Verify spark context
sc
# OUTPUT: res0: org.apache.spark.SparkContext = org.apache.spark.SparkContext@404721db

# Load text file
val textFile = sc.textFile("s3://elasticmapreduce/samples/hive-ads/tables/impressions/dt=2009-04-13-08-05/ec2-0-51-75-39.amazon.com-2009-04-13-08-05.log")

# Define the function
val linesWithCartoonNetwork = textFile.filter(line => line.contains("cartoonnetwork.com")).count()
# OUTPUT: linesWithCartoonNetwork: org.apache.spark.rdd.RDD[String] = MapPartitionsRDD[2] at filter at <console>:23

# Exeute the function
linesWithCartoonNetwork
# OUTPUT: res2: Long = 9