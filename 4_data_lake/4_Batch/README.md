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
A job definition specifies how jobs are to be run; you can think of it as a blueprint for the resources in your job. You can supply your job with an IAM role to provide programmatic access to other AWS resources, and you specify both memory and CPU requirements. The job definition can also control container properties, environment variables, and mount points for persistent storage. Many of the specifications in a job definition can be overridden by specifying new values when submitting individual Jobs. For more information, see Job definitions

### Job Queues
When you submit an AWS Batch job, you submit it to a particular job queue, where it resides until it is scheduled onto a compute environment. You associate one or more compute environments with a job queue, and you can assign priority values for these compute environments and even across job queues themselves. For example, you could have a high priority queue that you submit time-sensitive jobs to, and a low priority queue for jobs that can run anytime when compute resources are cheaper.

### Compute Environment
A compute environment is a set of managed or unmanaged compute resources that are used to run jobs. Managed compute environments allow you to specify desired compute type (Fargate or EC2) at several levels of detail. You can set up compute environments that use a particular type of EC2 instance, a particular model such as c5.2xlarge or m5.10xlarge, or simply specify that you want to use the newest instance types. You can also specify the minimum, desired, and maximum number of vCPUs for the environment, along with the amount you are willing to pay for a Spot Instance as a percentage of the On-Demand Instance price and a target set of VPC subnets. AWS Batch will efficiently launch, manage, and terminate compute types as needed. You can also manage your own compute environments. In this case you are responsible for setting up and scaling the instances in an Amazon ECS cluster that AWS Batch creates for you. 