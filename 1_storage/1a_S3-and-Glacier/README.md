## AWS S3 and Glacier

- For more information which compares capabilities for all AWS storage service options, see this [page](https://github.com/lynnlangit/Hello-AWS-Data-Services/tree/master/1_storage/2_EFS-EBS-FSx)
- The S3 Intelligent Tiering - [link](https://aws.amazon.com/blogs/aws/s3-intelligent-tiering-adds-archive-access-tiers/) - service (including several choices in archiving) to automate archiving (and save money!) for huge-sized file storage

---

### Use these S3 scripts

- Use 's3.sh' with aws cli  (can use 'tagging.json' to add bucket tags)  
- Use 'make_bucket.template' as an AWS CF template (NOTE: does NOT delete bucket)
- Edit 'make_bucket.tf' to add unigue bucket name
    - install Terraform and verify - https://learn.hashicorp.com/terraform/getting-started/install
    - run 'terraform init'
    - run 'terraform plan' (first time only), then 'terraform apply'
    - run 'terraform show' to verify
    - change the 'make_bucket.tf' file, then 'terraform apply' to update
    - delete via 'terraform destroy'
