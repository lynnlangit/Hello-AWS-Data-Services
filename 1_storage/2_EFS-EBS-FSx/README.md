## AWS Storage Options Compared

Info updated and originally from this article - https://dzone.com/articles/confused-by-aws-storage-options-s3-ebs-amp-efs-explained 

### Storage Options

AWS includes a number of file storage options services.  These include S3, EBS, EFS and more.  Details and comparison chart below.  

<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/storage-comparison.png" width=800>

#### Amazon S3 (Simple Object Storage) and Glacier
- provides simple object storage and file archiving (the latter using the AWS Glacier service) using buckets w/unique names
- Use cases: hosting website images and videos, data analytics, and both mobile and web applications
- Object storage manages data as objects (data types are stored in their native formats)
- There is no hierarchy of relations between files with object storage — data objects can be distributed across several machines
- You can access the S3 service from anywhere on the internet depending on IAM permissions (can be public)
- Learn more about Amazon S3 [common operations on objects and buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html)

#### AWS EBS (Elastic Block Storage) 
- provides persistent block-level data storage as a volume mounted to one EC2 VM instance
- Use cases: business continuity, software testing, and database management
- Block storage stores files in multiple volumes called blocks, which act as separate hard drives
- block storage devices are more flexible and offer higher performance than regular file storage
- Learn more about EBS [common operations on volumes](https://cloud.netapp.com/blog/ebs-volumes-5-lesser-known-functions#5less-known)

#### AWS EFS (Elastic File Storage)
- provides shared, elastic file storage system (grows/shrinks as you add/remove files) as a file system mounted to EC2 VM instances
- Use cases: SaaS applications and content management systems
- It offers a traditional file storage paradigm, with data organized into directories and subdirectories
- Learn more about EFS [common operation on file systems](https://docs.aws.amazon.com/efs/latest/ug/wt1-getting-started.html) 
#### AWS FSx (xxx)
- provides shared, elastic file storage system that grows and shrinks as you add and remove files
- Use cases: xxx
- It offers a traditional file storage paradigm, with data organized into directories and subdirectories
EFS is useful for SaaS applications and content management systems
- You can mount EFS onto several EC2 instances at the same time
- Learn how to create an EFS file system and mount it on an EC2 instance.

#### AWS Storage Gateway (xxx)
- provides shared, elastic file storage system that grows and shrinks as you add and remove files
- Use cases: xxx
- It offers a traditional file storage paradigm, with data organized into directories and subdirectories
EFS is useful for SaaS applications and content management systems
- You can mount EFS onto several EC2 instances at the same time
- Learn how to create an EFS file system and mount it on an EC2 instance.
