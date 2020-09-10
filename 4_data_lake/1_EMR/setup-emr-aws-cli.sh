## IMPORANT: to run this command needs be one, single line

aws emr create-cluster 
	--applications Name=Ganglia Name=Spark Name=Zeppelin 
	--ec2-attributes 
		'{"KeyName":"hadoop-demo",
		  "InstanceProfile":"EMR_EC2_DefaultRole",
		  "SubnetId":"subnet-f0c86abd",
		  "EmrManagedSlaveSecurityGroup":"sg-05d4ceb40455f70a8",
		  "EmrManagedMasterSecurityGroup":"sg-0c30f68bab7564575"}' 
	--service-role EMR_DefaultRole 
	--enable-debugging 
	--release-label emr-5.29.0 
	--log-uri 's3n://aws-logs-069361131403-us-east-1/elasticmapreduce/' 
	--name 'demo-Wed' 
	--instance-groups 
		'[{"InstanceCount":1,"EbsConfiguration":
			{"EbsBlockDeviceConfigs":
				[{"VolumeSpecification":
					{"SizeInGB":32,"VolumeType":"gp2"},
				  	 "VolumesPerInstance":2}]},
				  	 "InstanceGroupType":"MASTER",
				  	 "InstanceType":"m5.xlarge",
				  	 "Name":"Master Instance Group"},
				  	{"InstanceCount":2,
				  	 "EbsConfiguration":
				  	 	{"EbsBlockDeviceConfigs":
				  	 		[{"VolumeSpecification":
				  	 			{"SizeInGB":32,
				  	 			 "VolumeType":"gp2"},
				  	 			"VolumesPerInstance":2}]},
				  	 	"InstanceGroupType":"CORE",
				  	 	"InstanceType":"m5.xlarge",
				  	 	"Name":"Core Instance Group"}]' 
	--configurations '[{"Classification":"spark","Properties":{}}]' 
	--scale-down-behavior TERMINATE_AT_TASK_COMPLETION 
	--region us-east-1