# Amazon Sagemaker

- Amazon SageMaker is a fully-mamaged machine learning service.  
- SageMake includes a set of tools, designed to support machine learning workloads (pipelines) on AWS.  
- Link to SageMaker code samples on GitHub - [link](https://github.com/aws/amazon-sagemaker-examples).  

Shown below are the pipeline phases, which correspond to parts of the AWS SageMaker service offerings.

![SageMaker phases](https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/sagemaker-phases.png)

---
## Example SageMaker Architecture

As part of the example solution (architecture shown below), the following services are used:

- AWS Lambda: Used to generate a synthetic credits dataset and upload to Amazon S3.
- AWS Glue: Used to crawl datasets, and transform the credits dataset using Apache Spark.
- Amazon S3: Used to store datasets and the outputs of the AWS Glue Job.
- Amazon SageMaker Notebook: Used to train the LightGBM model.
- Amazon ECR: Used to store the custom Scikit-learn + LightGBM training environment.
- Amazon SageMaker Endpoint: Used to deploy the trained model and SHAP explainer.
- Amazon SageMaker Batch Transform: Used to compute explanations in batch.

<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/sm-ex-arch.png" width=800>


---

## SageMaker Services

Amazon SageMaker includes many services (or features).  These services are categorized, listed and described below.

### Jupyter Notebook Work Areas

#### SageMaker Studio Notebooks (and other services)
- An integrated machine learning environment where you can build, train, deploy, and analyze your models all in the same application.
- Use the next generation of SageMaker notebooks which include AWS Single Sign-On (AWS SSO) integration, fast start-up times, and single-click sharing.
- Read a comparison of Studio vs regular SageMaker Notebooks - https://docs.aws.amazon.com/sagemaker/latest/dg/notebooks-comparison.html

#### SageMake Notebook Instances
- Use simple Jupyter Notebook interface instances - lightweight
- Use example Notebook configuration scripts - https://github.com/aws-samples/amazon-sagemaker-notebook-instance-lifecycle-config-samples

---
### Model Management

#### SageMaker Model Registry
Versioning, artifact and lineage tracking, approval workflow, and cross account support for deployment of your machine learning models.

#### SageMaker Projects & Model Building Pipelines
- Create end-to-end ML solutions with CI/CD by using SageMaker projects and Code Build
- Create and manage machine learning pipelines integrated directly with SageMaker jobs.

#### SageMaker ML Lineage Tracking
- Track the lineage of machine learning workflows.

##### SageMaker Data Wrangler
- Import, analyze, prepare, and featurize data in SageMaker Studio. 
- Integrate Data Wrangler into your machine learning workflows to simplify and streamline data pre-processing and feature engineering using little to no coding. 
- Add your own Python scripts and transformations to customize your data prep workflow.

#### SageMaker Feature Store
- A centralized store for features and associated metadata so features can be easily discovered and reused. 
- Create two types of stores, an Online or Offline store. 
- Use the Online Store can for low latency, real-time inference use cases 
- Use the Offline Store can be used for training and batch inference.

---

### Developer Tools

#### SageMaker Clarify
- Improve your machine learning models by detecting potential bias and help explain the predictions that models make.
- Example Notebook using Clarify - https://github.com/aws/amazon-sagemaker-examples/blob/master/sagemaker_processing/fairness_and_explainability/fairness_and_explainability.ipynb

#### SageMaker Debugger
- Inspect training parameters and data throughout the training process. 
- Automatically detect and alert users to commonly occurring errors such as parameter values getting too large or small.

#### SageMaker Model Monitor
- Monitor and analyze models in production (endpoints) to detect data drift and deviations in model quality.

---

## Deployment Tools

#### SageMaker Edge Manager
- Optimize custom models for edge devices, create and manage fleets
- Run models with an efficient runtime, and monitor each model on each device.

#### SageMaker Neo
- Train machine learning models once, then run anywhere in the cloud and at the edge.

#### SageMaker Elastic Inference
- Speed up the throughput and decrease the latency of getting real-time inferences.

---

### Easy Model Creation & Data Preparation

#### SageMaker Autopilot & Jumpstart
- Users without machine learning knowledge can quickly build classification and regression models.
- Learn about SageMaker features and capabilities through curated 1-click solutions, 
- Run example notebooks, and pretrained models that you can deploy. 

#### Reinforcement Learning
- Maximize the long-term reward that an agent receives as a result of its actions.

#### SageMaker Experiments
- Experiment management and tracking. 
- Use the tracked data to reconstruct an experiment, 
- Incrementally build on experiments conducted by peers
- Trace model lineage for compliance and audit verifications.

#### Training Jobs 
- Create or reuse ML algorithms running in containers
- Use hyperparameter training configurations
- Can create hyperparameter tuning jobs 

#### Processing Jobs
- Analyze, validate and process data in scalable, container-based job clusters
- Tackle feature engineering
- Interpret and evaluate models

#### Batch Transform
- Preprocess datasets
- Run inference when you don't need a persistent endpoint
- Associate input records with inferences to assist the interpretation of results.

---

### Human and AI Work

#### SageMaker Ground Truth
- Use high-quality training datasets by using workers along with machine learning to create labeled datasets.

#### Amazon Augmented AI
- Build the workflows required for human review of ML predictions.
- Supports image, text or custom analysis jobs


