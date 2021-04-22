# Learning AWS Glue

<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/glue-arch.png" width=800>

## What is it?

AWS Glue is a serverless data integration service that makes it easy to discover, prepare, and combine data for analytics, machine learning, and application development. AWS Glue provides all of the capabilities needed for data integration so that you can start analyzing your data and putting it to use in minutes instead of months.

Data integration is the process of preparing and combining data for analytics, machine learning, and application development. It involves multiple tasks, such as discovering and extracting data from various sources; enriching, cleaning, normalizing, and combining data; and loading and organizing data in databases, data warehouses, and data lakes. These tasks are often handled by different types of users that each use different products.

AWS Glue provides both visual and code-based interfaces to make data integration easier. Users can easily find and access data using the AWS Glue Data Catalog. Data engineers and ETL (extract, transform, and load) developers can visually create, run, and monitor ETL workflows with a few clicks in AWS Glue Studio. Data analysts and data scientists can use AWS Glue DataBrew to visually enrich, clean, and normalize data without writing code. With AWS Glue Elastic Views, application developers can use familiar Structured Query Language (SQL) to combine and replicate data across different data stores.

## AWS Glue Data Brew

Is a graphical interface which allows you to create two types of data processing jobs.  A Glue Data Brew job runs a Glue Data Brew recipe.  Recipes are either for data profiling (statistical analysis of designated datasets) or data transformations.  Glue Data Brew includes common transformations (column rename, fill in duplicated values, etc...) so that you can quickly build custom transformation recipes.  Shown below is the dataset view of Glue Data Brew.

<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/glue-dataset.png" width=600>

## Learn More

For more see AWS blogs and resources
- Sample with CF template - https://aws.amazon.com/solutions/data-lake-solution/
- AWS Glue concepts - https://docs.aws.amazon.com/glue/latest/dg/components-key-concepts.html
