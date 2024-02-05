# AWS DevOps Best Practices

Companion to my LinkedIn Learning Course with the same name

## Foundations

- What is Cloud DevOps? - defined by AWS - [link](https://aws.amazon.com/devops/what-is-devops/)
- Core Cloud User IAM Security practices - [link](https://aws.amazon.com/iam/resources/best-practices/)
- Core Cloud FinOps practices - [link](https://github.com/lynnlangit/aws-cost-control) to my GitHub Repo on the `aws-cost-control` topic
- JIT DevOps / Admin Access Example - [link](https://aws.amazon.com/blogs/apn/just-in-time-least-privileged-access-to-aws-administrative-roles-with-okta-and-aws-identity-center)
- Core Cloud Observability/Monitoring practices - [link](https://aws.amazon.com/cloudops/monitoring-and-observability)

## Infra as Code
- AWS Cloud Scripting w/SDK
  - what is the `awscli` - [link](https://aws.amazon.com/cli/)
  - Simple AWS S3 Python list buckets - [link](https://github.com/awsdocs/aws-doc-sdk-examples/blob/main/python/example_code/s3/s3_basics/hello.py)
- AWS Dev Environments & Cloud9
  - AWS DevEnvs Best Practice Guidance (Dev/Test/Prod) - [link](https://docs.aws.amazon.com/cdk/v2/guide/best-practices.html)
  - AWS Cloud9 IDE Best Practices - [link](https://docs.aws.amazon.com/cloud9/latest/user-guide/ide.html)
- AWS Cloud Formation Templates
  - Simple AWS S3 CF Template - [link](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/quickref-s3.html)
- Cloud Templates (Terraform, Pulimi...)
  - Simple AWS S3 Terraform Example (from blog post) - [link](https://blog.purestorage.com/purely-informational/how-to-create-an-s3-bucket-with-terraform/)
  - Complete AWS S3 Terraform Example (from Terraform) - [link](https://github.com/terraform-aws-modules/terraform-aws-s3-bucket/tree/v4.0.1/examples/complete)

## Blueprints
- Effective Cloud Formation
  - AWS Best Practices - [link](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/best-practices.html)
- Effective Cloud Diagrams
  - My Keynote 'Viz Cloud Systems' - [link](https://www.youtube.com/watch?v=HHitdmje1ok)
- Live Cloud Diagrams
  - AWS Live Cloud Formation  - blog announcement - [link](https://aws.amazon.com/blogs/devops/import-entire-applications-into-aws-cloudformation/)
    - AWS IaC Generator Tool - [link](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/generate-IaC.html)
  - AWS - AWS Workload Discovery
  - 3rd Party - Cloudcraft.co, Lucid Charts Live, Hava.io, Holori 
- Using the AWS Well-architected Tools
  - 6-pillars of well-architected AWS cloud applications - [link](https://aws.amazon.com/blogs/apn/the-6-pillars-of-the-aws-well-architected-framework/)
  - Full AWS well-architected document (882 pages!) - [link](https://docs.aws.amazon.com/wellarchitected/latest/framework/welcome.html)

## Specialty DevOps
- AWS DataOps by (CF Template) example - [link](https://aws.amazon.com/blogs/big-data/build-a-dataops-platform-to-break-silos-between-engineers-and-analysts/)
- AWS ServerlessOps Review Tool on GitHub - [link](https://github.com/aws-samples/serverless-ops-review)
- AWS MLOps for SageMaker
  - Architecture Explained - [link](https://aws.amazon.com/sagemaker/mlops)
  - Demo Walkthrough w/Template - [link](https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-projects-walkthrough.html)
  - AWS ML + LLMOps Explained - [link](https://aws.amazon.com/blogs/machine-learning/operationalize-llm-evaluation-at-scale-using-amazon-sagemaker-clarify-and-mlops-services/)

## CI/CD
- Cloud Infrastructe Testing Fundamentals
    - TDD for Cloud infrstructure guidance - [link](https://docs.aws.amazon.com/prescriptive-guidance/latest/best-practices-cdk-typescript-iac/development-best-practices.html)
    - General guidance and examples - [link](https://docs.aws.amazon.com/cdk/v2/guide/testing.html)
- AWS Tools for CI/CD tools and architecture - [link](https://docs.aws.amazon.com/whitepapers/latest/cicd_for_5g_networks_on_aws/cicd-on-aws.html)
- Demos: Create a CI/CD Pipeline
    - Simple Example (S3) w/code - [link](https://docs.aws.amazon.com/codepipeline/latest/userguide/tutorials-simple-s3.html)
    - Pipelines for S3 with CF templates - [link](https://docs.aws.amazon.com/codepipeline/latest/userguide/tutorials-cloudformation.html)
    - Four stage example w/code - [link](https://docs.aws.amazon.com/codepipeline/latest/userguide/tutorials-four-stage-pipeline.html)
- Explore CI/CD Best Practices - [link](https://docs.aws.amazon.com/prescriptive-guidance/latest/strategy-cicd-litmus/cicd-best-practices.html)
