# AWS Storage Options Compared

## Core Storage Options

AWS includes a number of file storage options services.  These include S3, EBS, EFS and more.  Details and comparison chart below.  

<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/s3-to-glacier.png" width=600>

### Amazon S3 (Simple Object Storage) and Glacier
- provides simple **object storage using buckets** w/unique names - also archiving via Glacier service vaults
- S3 manages data as objects, access the S3 service from anywhere on the internet depending on IAM permissions (can be public)
- S3 storage classes impact latency and cost - [more](https://aws.amazon.com/s3/storage-classes)
- Learn more about Amazon S3 [common operations on objects and buckets](https://docs.aws.amazon.com/AmazonS3/latest/dev/using-with-s3-actions.html)
- Can speed up data transfer using S3 Transfer Acceleration - see [speed test](http://s3-accelerate-speedtest.s3-accelerate.amazonaws.com/en/accelerate-speed-comparsion.html)
- Use cases: hosting website images and videos, data analytics, and both mobile and web applications

### AWS EBS (Elastic Block Storage) 
- provides persistent block-level data storage as a **volume mounted to one EC2 VM instance**
- EBS stores files in multiple volumes called blocks, which act as separate hard drives - re-use from EBS snapshots
- EBS devices are more flexible and offer higher performance than regular file storage
- Learn more about EBS [common operations on volumes](https://cloud.netapp.com/blog/ebs-volumes-5-lesser-known-functions#5less-known)
- Use cases: business continuity, software testing, and database management

### AWS EFS (Elastic File Storage)
- provides shared, elastic file storage system (grows/shrinks as you add/remove files) as a **file system mounted to EC2 VM instances**
- EFS is a managed NAS filer based on NFS v4, with data organized into directories and subdirectories
- Learn more about EFS [common operation on file systems](https://docs.aws.amazon.com/efs/latest/ug/wt1-getting-started.html) 
- Use cases: SaaS applications and content management systems
<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/storage-comparison.png" width=800>

---

## Other Storage Service

### Amazon FSx for Lustre (for Windows)
- provides shared, elastic file storage system as a **file system mounted to EC2 Windows-based VM instances**
- FSx for Windows is a managed Windows Servers that runs Windows SMB-based file services
- FSx uses file systems and backups and uses the Volume Shadow Copy Service (VSS) in Microsoft Windows
- Learn more about FSx [common operation on file systems](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/using-file-shares.html)
- Quick Start FSx [tutorial](https://aws.amazon.com/quickstart/architecture/amazon-fsx-windows-file-server/)
- Use cases: Windows file system workloads

### AWS Storage Gateway 
- provides seamless and secure integration between an organization's on-premises IT environment and AWS's storage infrastructure
- Learn more about Storage Gateway [common operations on file systems](https://docs.aws.amazon.com/storagegateway/latest/userguide/StorageGatewayConcepts.html)
- Use cases: cloud-busting, backup/archive, tiered storage
<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/storage-gateway.png" width=800>

----
### Source

Info on this page sourced (and updated) from this article - https://dzone.com/articles/confused-by-aws-storage-options-s3-ebs-amp-efs-explained 

