### AWS Storage Options Compared

From this article - https://dzone.com/articles/confused-by-aws-storage-options-s3-ebs-amp-efs-explained - updated for this post. 

### Storage Options

AWS includes a number of file storage options services.  These include S3, EBS, EFS and more.  Details below.  

#### Amazon S3 (Simple Object Storage) 
- provides simple object storage
- useful for hosting website images and videos, data analytics, and both mobile and web applications
- Object storage manages data as objects, meaning all data types are stored in their native formats
- There is no hierarchy of relations between files with object storage — data objects can be distributed across several machines
- You can access the S3 service from anywhere on the internet
- Learn more about Amazon S3 common operations on objects and buckets. 

#### AWS EBS (Elastic Block Storage) 
- provides persistent block-level data storage
- Block storage stores files in multiple volumes called blocks, which act as separate hard drives
- block storage devices are more flexible and offer higher performance than regular file storage
- You need to mount EBS onto an Amazon EC2 instance
- Use cases include business continuity, software testing, and database management
- Learn more about EBS volume types and common operations.

#### AWS EFS (Elastic File Storage)
- is a shared, elastic file storage system that grows and shrinks as you add and remove files
- It offers a traditional file storage paradigm, with data organized into directories and subdirectories
EFS is useful for SaaS applications and content management systems
- You can mount EFS onto several EC2 instances at the same time
- Learn how to create an EFS file system and mount it on an EC2 instance.

#### AWS FSx (xxx)
- is a shared, elastic file storage system that grows and shrinks as you add and remove files
- It offers a traditional file storage paradigm, with data organized into directories and subdirectories
EFS is useful for SaaS applications and content management systems
- You can mount EFS onto several EC2 instances at the same time
- Learn how to create an EFS file system and mount it on an EC2 instance.

#### AWS Storage Gateway (xxx)
- is a shared, elastic file storage system that grows and shrinks as you add and remove files
- It offers a traditional file storage paradigm, with data organized into directories and subdirectories
EFS is useful for SaaS applications and content management systems
- You can mount EFS onto several EC2 instances at the same time
- Learn how to create an EFS file system and mount it on an EC2 instance.
