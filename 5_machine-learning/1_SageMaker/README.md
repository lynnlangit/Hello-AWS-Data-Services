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

### Notebook Work Areas

#### SageMaker Studio
An integrated machine learning environment where you can build, train, deploy, and analyze your models all in the same application.
#### SageMaker Studio Notebooks
The next generation of SageMaker notebooks that include AWS Single Sign-On (AWS SSO) integration, fast start-up times, and single-click sharing.

---
### Model Management

#### SageMaker Model Registry
Versioning, artifact and lineage tracking, approval workflow, and cross account support for deployment of your machine learning models.

#### SageMaker Projects
Create end-to-end ML solutions with CI/CD by using SageMaker projects.

#### SageMaker Model Building Pipelines
Create and manage machine learning pipelines integrated directly with SageMaker jobs.

#### SageMaker ML Lineage Tracking
Track the lineage of machine learning workflows.

##### SageMaker Data Wrangler
Import, analyze, prepare, and featurize data in SageMaker Studio. You can integrate Data Wrangler into your machine learning workflows to simplify and streamline data pre-processing and feature engineering using little to no coding. You can also add your own Python scripts and transformations to customize your data prep workflow.

#### SageMaker Feature Store
A centralized store for features and associated metadata so features can be easily discovered and reused. You can create two types of stores, an Online or Offline store. The Online Store can be used for low latency, real-time inference use cases and the Offline Store can be used for training and batch inference.

---

### Developer Tools

#### SageMaker Clarify
Improve your machine learning models by detecting potential bias and help explain the predictions that models make.

#### SageMaker Debugger
Inspect training parameters and data throughout the training process. Automatically detect and alert users to commonly occurring errors such as parameter values getting too large or small.

#### SageMaker Model Monitor
Monitor and analyze models in production (endpoints) to detect data drift and deviations in model quality.

---

## Deployment Tools

#### SageMaker Edge Manager
Optimize custom models for edge devices, create and manage fleets, run models with an efficient runtime, and monitor each model on each device.

#### SageMaker Neo
Train machine learning models once, then run anywhere in the cloud and at the edge.

#### SageMaker Elastic Inference
Speed up the throughput and decrease the latency of getting real-time inferences.

---

### Human and AI Work

#### SageMaker Ground Truth
High-quality training datasets by using workers along with machine learning to create labeled datasets.

#### Amazon Augmented AI
Build the workflows required for human review of ML predictions. Amazon A2I brings human review to all developers, removing the undifferentiated heavy lifting associated with building human review systems or managing large numbers of human reviewers.

---

### Easy Model Creation

#### SageMaker Autopilot
Users without machine learning knowledge can quickly build classification and regression models.

#### SageMaker JumpStart
Learn about SageMaker features and capabilities through curated 1-click solutions, example notebooks, and pretrained models that you can deploy. You can also fine-tune the models and deploy them.

#### Reinforcement Learning
Maximize the long-term reward that an agent receives as a result of its actions.

#### SageMaker Experiments
Experiment management and tracking. You can use the tracked data to reconstruct an experiment, incrementally build on experiments conducted by peers, and trace model lineage for compliance and audit verifications.

#### Preprocessing
Analyze and preprocess data, tackle feature engineering, and evaluate models.

#### Batch Transform
Preprocess datasets, run inference when you don't need a persistent endpoint, and associate input records with inferences to assist the interpretation of results.


