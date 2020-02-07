# setup one (or mote) sample Jupyter Notebook instances
# 1. Name instance and select instance type
#       ml.t2.medium, ml.m4.xlarge or ml.p2.xlarge(has GPU)
#       *you may have to request service limit update for GPU

# set up Security - IAM role, VPN, Encryption
# 2a. Create or Select IAM role - set S3 (and other needed) service permissions
#         select desintation as S3, create new bucket, create IAM role
# set VPC and/or encryption (optional)
# 2b. Set up as needed (VPC required for connecting to EMR)

# train, test, tune and host your ML model
# 3. Connect to new notebook instance after it is ready
#       Open an run sample notebook(s) to train, host, predict and serve your model
#       TIP: creation of artifacts (i.e. training, etc...) can take 10-20 minutes
#            you can also check the AWS console to see if the item has been created

# info about included notebooks
# 4. Use the 'mnist' example to see how different algorithms work.
#       NOTE: Training will take ~10 minutes on a cpu-based machines
#       TIP: You can use 'k-means (unsupervised clustering',
#           gluon (layer over MxNet), MxNet (with cpu or gpu if available)

# understanding algorithm selection using 'mnist' above
#       Unsupervised clustering via K-means will be slow and produce weak results (not a good choice)
#       Supervised classification via MxNet (DNN) will produce much better results
#           uses Multi-layer (2D) perceptron
#       Supervised classification via MxNet (CNN) will produce excellent results
#           uses LeNet (3D) - also this implementation would train much faster if GPU were available

# using custom algorithms
# 5a. Use sample, must download entire source files from GitHub
# 5b. Must re-upload sample files to new notebook instance
# 5c. Follow instructions to create Docker container of the custom ML algorithm
#       TIP: use included notebook to create container, then just follow normal steps
#               i.e. train model, evaluate model, create endpoint, predict using model

# other info
# 6. Use endpoint configuration to support A/B testing of algorithms w/different hyperparameter values

