# AWS Batch

<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/aws-batch-arch.png" width=800>

From the AWS Docs - [link](https://docs.aws.amazon.com/batch/latest/userguide/what-is-batch.html)

- AWS Batch is a Regional service that simplifies running batch jobs across multiple Availability Zones within a Region. 
- create AWS Batch compute environments within a new or existing VPC
- associate a compute environment with a job queue
- define job definitions that specify which Docker container images to run your jobs
- pull stored container images from container registries (ECR on AWS or others, i.e. DockerHub...)

## AWS Batch Components

From the AWS Docs - [link](https://docs.aws.amazon.com/batch/latest/userguide/what-is-batch.html)

### Jobs
A unit of work (such as a shell script, a Linux executable, or a Docker container image) that you submit to AWS Batch. It has a name, and runs as a containerized application on AWS Fargate or Amazon EC2 resources in your compute environment, using parameters that you specify in a job definition. Jobs can reference other jobs by name or by ID, and can be dependent on the successful completion of other jobs. For more information, see Jobs.

### Job Definitions
- specifies how jobs are to be run with job definitions
- supply your job with an IAM role to provide programmatic access to other AWS resources
- specify both memory and CPU requirements
- control container properties, environment variables, and mount points for persistent storage
- override the specifications in a job definition by specifying new values when submitting individual Jobs

### Job Queues
- submit a job to a particular job queue
- where the job resides until it is scheduled onto a compute environment
- associate one or more compute environments with a job queue
- assign priority values (1 to 1000) for these compute environments and even across job queues themselves. For example, you could have a high priority queue that you submit time-sensitive jobs to, and a low priority queue for jobs that can run anytime when compute resources are cheaper.

### Compute Environment
A compute environment is a set of managed or unmanaged compute resources that are used to run jobs. Managed compute environments allow you to specify desired compute type (Fargate or EC2) at several levels of detail. You can set up compute environments that use a particular type of EC2 instance, a particular model such as c5.2xlarge or m5.10xlarge, or simply specify that you want to use the newest instance types. You can also specify the minimum, desired, and maximum number of vCPUs for the environment, along with the amount you are willing to pay for a Spot Instance as a percentage of the On-Demand Instance price and a target set of VPC subnets. AWS Batch will efficiently launch, manage, and terminate compute types as needed. You can also manage your own compute environments. In this case you are responsible for setting up and scaling the instances in an Amazon ECS cluster that AWS Batch creates for you.   

Uses an 'allocation strategy' two possible settings --> Allocation Strategies allow you to choose how Batch launches instances on your behalf. We recommend `Best Fit Progressive` for On-Demand CEs and Spot Capacity Optimized for Spot CEs. This will make it much more likely Batch will be able to secure the needed capacity for your workloads by pulling from diverse instance types. However, if you want to ensure Batch chooses only the lowest priced instance types appropriate to your jobs, you can select the `Best Fit` strategy.