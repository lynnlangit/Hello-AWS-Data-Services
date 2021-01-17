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
- EBS stores files in multiple volumes called blocks, which act as separate hard drives
- EBS devices are more flexible and offer higher performance than regular file storage
- Learn more about EBS [common operations on volumes](https://cloud.netapp.com/blog/ebs-volumes-5-lesser-known-functions#5less-known)

#### AWS EFS (Elastic File Storage)
- provides shared, elastic file storage system (grows/shrinks as you add/remove files) as a file system mounted to EC2 VM instances
- Use cases: SaaS applications and content management systems
- EFS is a managed NAS filer based on NFS v4, with data organized into directories and subdirectories
- Learn more about EFS [common operation on file systems](https://docs.aws.amazon.com/efs/latest/ug/wt1-getting-started.html) 

#### Amazon FSx for Lustre (for Windows)
- provides shared, elastic file storage system as a file system mounted to EC2 Windows-based VM instances
- Use cases: Windows file system workloads
- FSx for Windows is a managed Windows Servers that runs Windows SMB-based file services
- FSx uses file systems and backups and uses the Volume Shadow Copy Service (VSS) in Microsoft Windows
- Learn more about FSx [common operation on file systems](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-file-shares.html)

#### AWS Storage Gateway 

<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/storage-gateway.png" width=600>

- provides seamless and secure integration between an organization's on-premises IT environment and AWS's storage infrastructure
- Use cases: cloud-busting, backup/archive, tiered storage
- Learn more about Storage Gateway [common operations on file systems](https://docs.aws.amazon.com/storagegateway/latest/userguide/StorageGatewayConcepts.html)
