# Verify Python version in terminal
python --version

# install with conda
conda install -c conda-forge awscli

# Verify awscli
aws --version

# Create an IAM admin AWS user with keys, download keys 
# Run configure to set security context, writes a 'credentials' file to the '~./aws' directory
aws configure

# Verify awscli connectivity
aws s3 ls

# Upgrade awscli if outdated  *need to test this*
sudo conda install --upgrade awscli







 




