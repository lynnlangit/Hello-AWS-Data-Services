# Databricks releases frequently, verify documentation
# https://docs.databricks.com/applications/deep-learning/mxnet.html

#####################PREPARE#########################################
# 0a. Get the notebook (see link above or from this directory)
#       TIP: Get the notebook in the '*.ipynb' format

# 0b. Sign up and then sign in for a free Databricks (community) account
#       Here's the URL: https://community.cloud.databricks.com

# 0c. Create a new folder in your workspace

# 0d. Import the example notebook

# 0e. Import the 'mxnet' library (for cpu)
#       Tick the check box 'automatically attach to cluster'
#       NOTE: GPU-enabled Databricks instances are NOT available in the community (free) edition

# 0f. Create a new cluster 
#       Use type '3.5 LTS-Spark 2.2.1-Scala 2.11'
#       IMPORTANT: Cluster time is limited to one hour for the community edition

#####################USE##############################################

# 1a. When the cluster is ready (10 min or so), attach the notebook to it

# 1b. Edit the sample notebook 'cmd[24]' line 2
#       Change 'ctx = mx.gpu(0)' to 'ctx = mx.cpu(0)'

# 1c. Run notebook
#       NOTE: This will take around 12 minutes using only CPUs

# OTHER INFO: If you are using a commercial edition of Databricks, you can set up a cluster with GPU(s)
#       Using GPUs for this example will dramatically speed up the time train the model.