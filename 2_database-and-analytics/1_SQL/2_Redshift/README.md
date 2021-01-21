# About AWS Redshift

## Redshift System Architecture

From AWS Docs -[link](https://docs.aws.amazon.com/redshift/latest/dg/c_high_level_system_architecture.html)

## Use AWS Redshift Query Editor

These default parameters for the Query Editor connection configuration
- cluster -> your Redshift cluster name
- database -> `dev` is default  
- database user -> `awsuser` is default
- password -> your password

IMPORTANT: You must create and assign an IAM Role to your Redshift cluster.
If you forget, you can create a role and assign it AFTER the cluster has been created.
However it may take some time for the new role to be applied.  Alternatively, you can re-boot your cluster.

## More Info

- Redshift Data Sharing - https://www.youtube.com/watch?v=sIoTB8B5nn4
    - Uses Redshift clusters as producers and/or consumers of data
    - Uses Redshift `datashare` objects w/defined `schema` and added `tables`, then `consumer namespace(s)`
