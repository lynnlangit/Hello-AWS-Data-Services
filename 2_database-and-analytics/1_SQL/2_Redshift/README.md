# About AWS Redshift

## Redshift System Architecture & Sample DB

- Arch -> From AWS Docs - [link](https://docs.aws.amazon.com/redshift/latest/dg/c_high_level_system_architecture.html)
- Sample DB schema - [link](https://docs.aws.amazon.com/redshift/latest/dg/c_sampledb.html)
- Sample DB scripts - [link](https://docs.aws.amazon.com/redshift/latest/gsg/rs-gsg-create-sample-db.html)
- Redshift DW perf comparison - [link](https://aws.amazon.com/blogs/big-data/get-up-to-3x-better-price-performance-with-amazon-redshift-than-other-cloud-data-warehouses/)

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

- End-to-end example from previous reInvent workshop - https://github.com/lynnlangit/AWS-Redshift-Matillion-Workshop
- Redshift Access Advisor recommendations - https://docs.aws.amazon.com/redshift/latest/dg/advisor-recommendations.html
- Redshift Data Sharing - https://www.youtube.com/watch?v=sIoTB8B5nn4
    - Uses Redshift clusters as producers and/or consumers of data
    - Uses Redshift `datashare` objects w/defined `schema` and added `tables`, then `consumer namespace(s)`
    
---

## Newer Redshift  Features

### Redshift Spectrum

Amazon Redshift Spectrum ([announcement](https://aws.amazon.com/blogs/big-data/amazon-redshift-spectrum-extends-data-warehousing-out-to-exabytes-no-loading-required/)) resides on dedicated Amazon Redshift servers that are independent of your cluster. Redshift Spectrum pushes many compute-intensive tasks, such as predicate filtering and aggregation, down to the Redshift Spectrum layer. Redshift Spectrum queries use much less of your cluster's processing capacity than other queries. Redshift Spectrum also scales intelligently. Based on the demands of your queries, Redshift Spectrum can potentially use thousands of instances to take advantage of massively parallel processing.

You create Redshift Spectrum tables by defining the structure for your files and registering them as tables in an **external data catalog**. The external data catalog can be AWS Glue, the data catalog that comes with Amazon Athena, or your own Apache Hive metastore. You can create and manage external tables either from Amazon Redshift using data definition language (DDL) commands or using any other tool that connects to the external data catalog. Changes to the external data catalog are immediately available to any of your Amazon Redshift clusters.

Optionally, you can **partition the external tables** on one or more columns. Defining partitions as part of the external table can improve performance. The improvement occurs because the Amazon Redshift query optimizer eliminates partitions that don't contain data for the query.  After your Redshift Spectrum tables have been defined, you can query and join the tables just as you do any other Amazon Redshift table. Redshift Spectrum **does NOT support update operations on external tables**. You can add Redshift Spectrum tables to multiple Amazon Redshift clusters and query the same data on Amazon S3 from any cluster in the same AWS Region. When you update Amazon S3 data files, the data is immediately available for query from any of your Amazon Redshift clusters.  Architecture shown below.  

<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/redshift-spectrum.png" width=800>

### Redshift ML

Amazon Redshift supports supervised learning that includes regression, binary classification, and multiclass classification. The following terms are used to describe some Amazon Redshift ML concepts:  

- Machine learning in Amazon Redshift trains a model with one SQL command. Amazon Redshift ML and Amazon SageMaker manage all the data conversions, permissions, resource usage, and discovery of the proper model.
- Training is the phase when Amazon Redshift creates a machine learning model by running a specified subset of data into the model. Amazon Redshift automatically launches a training job in Amazon SageMaker and generates a model.
- Prediction (also called inference) is the use of the model in Amazon Redshift SQL queries to predict outcomes. At inference time, Amazon Redshift uses a model-based prediction function as part of a larger query to produce predictions. The predictions are computed locally, at the Amazon Redshift cluster, thus providing high throughput, low latency, and zero cost.
- Redshift ML - code examples - https://docs.aws.amazon.com/redshift/latest/dg/examples.html
