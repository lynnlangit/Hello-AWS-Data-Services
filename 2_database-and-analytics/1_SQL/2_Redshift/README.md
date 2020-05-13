# About AWS Redshift

## Use AWS Redshift Query Editor

These default parameters for the Query Editor connection configuration
- cluster -> your Redshift cluster name
- database -> `dev` is default  
- database user -> `awsuser` is default
- password -> your password

IMPORTANT: You must create and assign an IAM Role to your Redshift cluster.
If you forget, you can create a role and assign it AFTER the cluster has been created.
However it may take some time for the new role to be applied.  Alternatively, you can re-boot your cluster.
