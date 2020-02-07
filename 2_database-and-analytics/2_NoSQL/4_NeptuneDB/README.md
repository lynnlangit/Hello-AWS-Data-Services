# AWS NeptuneDB

## Notes
- IMPORTANT note about NeptuneDB.  If you create an instance from the AWS Console, you can NOT delete it, because, by default, termination protection is enabled.  You must use the `aws cli` tool to disable temination protection for your instance, then you can delete it.
- To disable termination protection for NeptuneDB on an existing cluster use 
    - `aws neptune modify-db-cluster --db-cluster-identifier 'demo-neptune-cluster' --no-deletion-protection
    - then, from the console, DELETE the instance(s)

Key Links
- Main AWS ML blog at https://aws.amazon.com/blogs/machine-learning/
