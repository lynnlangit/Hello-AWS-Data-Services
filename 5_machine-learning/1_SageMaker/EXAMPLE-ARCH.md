# Example End-to-End Architecture

## Example SageMaker Solution Architecture

As part of the example solution (architecture shown below), the following services are used:

1. AWS Lambda: Used to generate a synthetic credits dataset and upload to Amazon S3.
2. AWS Glue: Used to crawl datasets, and transform the credits dataset using Apache Spark.
3. Amazon S3: Used to store datasets and the outputs of the AWS Glue Job.
4. Amazon SageMaker Notebook: Used to train the LightGBM model.
5. Amazon ECR: Used to store the custom Scikit-learn + LightGBM training environment.
6. Amazon SageMaker Endpoint: Used to deploy the trained model and SHAP explainer.
7. Amazon SageMaker Batch Transform: Used to compute explanations in batch.

<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/sm-ex-arch.png" width=800>

---