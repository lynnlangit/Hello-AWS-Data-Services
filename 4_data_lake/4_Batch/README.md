# AWS Batch

<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/aws-batch-arch.png" width=800>

From the AWS Docs - [link](https://docs.aws.amazon.com/batch/latest/userguide/what-is-batch.html)

- AWS Batch is a Regional service that simplifies running batch jobs across multiple Availability Zones within a Region. 
- create AWS Batch **compute environments** within a new or existing VPC
    - associate a compute environment with a job queue
- define **job definitions** that specify which Docker container images to run your jobs
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
Create a compute environment to use a set of (managed or unmanaged) compute resources to run jobs 
- create a **MANAGED** compute environment to have AWS scale and configure your instances
    - specify desired compute type: Fargate, Fargate Spot, EC2 on-demand --or-- EC2 spot
    - for Fargate, specify **max CPUs**
    - for EC2...
        - choose EC2 allowed **instance types**, such as c5.2xlarge or m5.10xlarge --or-- select **optimal**
        - specify the minimum, desired, and maximum **number of vCPUs** for the environment
            - choose  the amount you are willing to pay for a Spot Instance as a percentage of the On-Demand Instance price and a target set of VPC subnets. 
        - choose an **allocation strategy** two possible settings, which defined how Batch launches instances on your behalf
            - `BEST_FIT` for lowest priced instance types
            - `BEST_FIT_PROGRESSIVE` for on-Demand CEs and Spot Capacity Optimized for Spot CEs, for ensuring spot instance will be available to handle bursting
            - `SPOT_CAPACITY_OPTIMIZED` as above, for **SPOT** Provisioning
- create an **UNMANAGED** compute environment when you want to control configuration and scaling manually 

