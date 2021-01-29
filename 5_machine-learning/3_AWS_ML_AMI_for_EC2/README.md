# AWS Deep Learning AMI

Use the AWS Deep Learning AMI image to create a pre-loaded EC2 instance.  Search on 'deep learning' in the EC2 `create instance` interface to use the latest image version.  Information on the latest AMI (from AWS documentation) is shown below and in docs - [link](https://docs.aws.amazon.com/dlami/latest/devguide/what-is-dlami.html)  

<img src="https://github.com/lynnlangit/Hello-AWS-Data-Services/blob/master/images/deep-learning-ami.png" width=800>

----

### AWS Deep Learning AMI (Ubuntu 18.04)

NOTE: The most current version is `Deep Learning AMI (Amazon Linux) Version 39.1` - It is `ami-030c83cfbb321b081`.  
This includes: MXNet-1.7.0 & 1.6.0, TensorFlow-2.4.0, 2.1.2 & 1.15.4, PyTorch-1.4.0 & 1.7.1, EI, & others. NVIDIA CUDA, cuDNN, NCCL, Intel MKL-DNN, Docker, NVIDIA-Docker & EFA support  

AWS Deep Learning AMI are built and optimized for building, training, debugging, and serving deep learning models in EC2 with popular frameworks such as TensorFlow, MXNet, PyTorch, and more. Deep learning frameworks are installed in Conda environments to provide a reliable and isolated environment for practitioners. The AWS Deep Learning AMI is provided at no additional charge to Amazon EC2 users. Deep Learning frameworks are pre-configured with latest versions of NVIDIA CUDA, cuDNN and Intel acceleration libraries such as MKL-DNN for high performance across CPU and GPU AWS EC2 instance types.

Below are the core components of AWS Deep Learning AMI:
- Popular deep learning frameworks includng TensorFlow(1.x, 2.x), PyTorch(1.x), and MXNet(1.x) performance tuned for using in AWS Instrasturctures. They are organized into Conda environments that are configured to be used out-of-the-box.
- Built-in support for AWS Inferentia with the Inf1 instance family.
- AWS Deep Learning Tools including AWS Elastic Fabric Adapter(EFA) and AWS Neuron.
- NVIDIA Deep Learning Softwares Including NVIDIA GPU Driver, CUDA Toolkit, cuDNN, NCCL, and Fabric Manager.
- Containerization platforms including Docker, and NVIDIA-Docker for build and run GPU accelerated Docker containers.
- Intel Architecture performance library Intel MKL-DNN.
- A collection of popular tools such as awscli, boto3, numpy, scikit-learn, opencv, pandas, matplotlib, graphviz, jupyter, ipython, and more.
