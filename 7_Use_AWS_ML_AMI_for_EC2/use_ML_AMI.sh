# if you plan to use a GPU-enabled EC2 instance
# you may have to request a service limit for your AWS account
# the default instance service limit is ZERO

####################### Prepare ###################################
# 0a. Request a service limit increase for instance type 'p2.xlarge'
#       Follow the instuctions on this page: https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html
#       NOTE: It may take 24 hours or more for the service limit to be put into effect

# 0b. Create a key pair for your EC2 instance
#       Download your keypair
#       Run 'chmod 400 <yourKey.pem>' from the downloaded directory

####################### CREATE INSTNCE ################################
# 1a. Select the AWS ML AMI which includes the libraries you want to use
#       TIP: Search for the 'conda ML AMI' to get all libraries and gpu drivers
#               it is 'AMI-5c9aa926'

# 1b. Create EC2 instance using the AMI above
#       Select the machine instance type of interest
#       'p2.xlarge' is smallest-sized instance with GPU
#       associate your <keyPair> with this instance

# 1c. Verify your instance by SSH'ing in to it
#       TIP: Check the security group for access to port 22 from your ip
#       Run 'ls' to see the list of installed libraries and examples
#       Run 'nvidia-smi -L' to verify the gpu if using (s/b 'GPU(0)')

####################### USE JUPTER NOTEBOOK ##############################
# 2a. From ssh window, run 'jupyter notebook' to start Jupyter on your instance
#       Copy the URL (which includes a token) to your clipboard

# 2b. From a new terminal window, create a tunnel to your instance for jupyter
#       Run 'ssh -nNt -L localhost:8888:localhost:8888 -i yourkey.pem ec2-user@.<ip>....'

# 2c. Use Jupyter on your laptop
#       Open Chrome, PASTE in the Jupyter URL (with token)

# 2d. Get sample MNIST notebook from MxNet (from https://mxnet.incubator.apache.org/tutorials/python/mnist.html)
#       Upload the notebook using the tunneled Jupyter interface on your laptop
#       Set Jupyter kernel to 'python3'

# 2e. Try out CPU vs GPU
#       Run with ctx.cpu(0) <2 lines in notebook> or ctx.gpu(0)
#       GPU runs 100% faster


