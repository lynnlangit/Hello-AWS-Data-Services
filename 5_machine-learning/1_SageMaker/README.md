# Amazon Sagemaker

- Amazon SageMaker is a fully-mamaged machine learning service.  
- SageMaker includes a set of tools, designed to support machine learning workloads (pipelines) on AWS.  
- Get SageMaker code samples on GitHub - [link](https://github.com/aws/amazon-sagemaker-examples).  

Shown below are the pipeline phases, which correspond to parts of the AWS SageMaker service offerings.

![SageMaker phases](https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/sagemaker-phases.png)

---
## Example SageMaker Architecture

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

## SageMaker Job Types

#### Labeling Jobs
- Use SageMaker Ground Truth to include humans in the process
- Use high-quality training datasets by using workers along with machine learning to create labeled datasets
- Supports image, text or custom analysis jobs

#### Processing Jobs
- Analyze, validate and process data in scalable, container-based job clusters
- Tackle feature engineering
- Interpret and evaluate models
- Can be run as pre or post-processing jobs
- Can use Batch Transforms jobs for this type of task

#### Training Jobs 
- Create or reuse ML algorithms running in containers
- Use hyperparameter training configurations
- Can create hyperparameter tuning jobs 

#### Inference Jobs
- Can crate persistent endpoints using endpoint configurations
- Run inference on datasets using Batch Transform Jobs
- Run Batch Tranform jobs to run inference when you don't need a persistent endpoint

---

## Jupyter Notebook Dev Env

#### SageMaker Studio Notebooks (and other services) --OR--
- An integrated machine learning environment where you can build, train, deploy, and analyze your models all in the same application.
- Use the next generation of SageMaker notebooks which include AWS Single Sign-On (AWS SSO) integration, fast start-up times, and single-click sharing.
- Read a comparison of Studio vs regular SageMaker Notebooks - [link](https://docs.aws.amazon.com/sagemaker/latest/dg/notebooks-comparison.html)

#### SageMake Notebook Instances
- Use simple Jupyter Notebook interface instances - lightweight
- Use example Notebook configuration scripts - [link](https://github.com/aws-samples/amazon-sagemaker-notebook-instance-lifecycle-config-samples)
- Can add elastic inference compute as well

---

## Developer Tools

#### SageMaker Clarify & Data Wrangler
- Improve your machine learning models by detecting potential bias and help explain the predictions that models make.
- Example Notebook using Clarify - [link](https://github.com/aws/amazon-sagemaker-examples/blob/master/sagemaker_processing/fairness_and_explainability/fairness_and_explainability.ipynb)
- Import, analyze, prepare, and featurize data in SageMaker Studio. 
- Integrate Data Wrangler into your machine learning workflows to simplify
- streamline data pre-processing and feature engineering using little to no coding. 
- Add your own Python scripts and transformations to customize your data prep workflow.

#### SageMaker Debugger & Model Monitor
- Inspect training parameters and data throughout the training process. 
- Automatically detect and alert users to commonly occurring errors such as parameter values getting too large or small.
- Monitor and analyze models in production (endpoints) to detect data drift and deviations in model quality.

#### SageMaker Feature Store
- A centralized store for features and associated metadata so features can be easily discovered and reused. 
- Create two types of stores, an Online or Offline store. 
- Use the Online Store can for low latency, real-time inference use cases 
- Use the Offline Store can be used for training and batch inference.

#### SageMaker Autopilot & Jumpstart
- Create classification and regression models quickly and easily
- Autopilot generated models can be configured to return probabilities of each inference
- Learn about SageMaker features and capabilities through curated 1-click solutions
- Run example notebooks, and pretrained models that you can deploy. 

#### SageMaker Experiments, Reinforcement Learning & Augmented AI
- Experiment management and tracking. 
- Use the tracked data to reconstruct an experiment, 
- Incrementally build on experiments conducted by peers
- Trace model lineage for compliance and audit verifications.
- Maximize the long-term reward that an agent receives as a result of its actions using RL
- Build the workflows required for human review of ML predictions.
- Supports image, text or custom analysis jobs

---

## Deployment Tools

#### SageMaker Model Registry & Lineage Tracking
- Versioning, artifact and lineage tracking, approval workflow, and cross account support for deployment of your machine learning models.
- Use Amazon ECR to register model container images
- Track the lineage of machine learning workflows.

#### SageMaker Projects & Model Building Pipelines
- Create end-to-end ML solutions with CI/CD by using SageMaker projects and Code Build
- Create and manage machine learning pipelines integrated directly with SageMaker jobs.

#### SageMaker Edge Manager, Neo & Elastic Inference
- Optimize custom models for edge devices, create and manage fleets
- Use the SageMaker Neo API to compile machine learning models to optimize them for your choice of hardware targets
- Run models with an efficient runtime, and monitor each model on each device
- Train machine learning models once, then run anywhere in the cloud and at the edge
- Speed up the throughput and decrease the latency of getting real-time inferences

---




