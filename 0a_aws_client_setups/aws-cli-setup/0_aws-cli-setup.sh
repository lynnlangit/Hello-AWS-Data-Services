# Verify Python version in terminal
python --version

# If using pip

# To install pip
sudo easy_install pip
# To install awscli with pip
pip install awscli
# To update your BASH profile
ls -d ~/Library/Pyhton/*/bin/aws
# Result will look something like this
/Users/lynnlangit/Library/Python/2.7/bin/aws
# Add line to your .bashrc
export PATH=$HOME/Library/Python/2.7/bin:$PATH
# in terminal, type `nano .bash_profile`
# copy the PATH statement above
# save `ctrl+o` and hit `return`, then `ctrl+x` to exit
# update from terminal window `source .bash_profile`

----

# If using homebrew  -- do NOT use 'sudo pip install awscli'
# **Prefer using homebrew to using pip!** if problem see end of this file
# http://www.chrisjmendez.com/2017/02/18/aws-installing-aws-client-using-homebrew/
brew update && brew doctor
brew install awscli

# Verify awscli
aws --version

# Create an IAM admin AWS user with keys, download keys 
# Run configure to set security context, writes a 'credentials' file to the '~./aws' directory
aws configure

# Verify awscli connectivity
aws s3 ls

# Upgrade awscli if outdated
sudo pip install --upgrade awscli

# -- ALTERATE install 'aws-shell'------------------------------------------------------------
# Install aws-shell from 'https://github.com/awslabs/aws-shell' for 'auto-complete' in awscli
sudo pip install aws-shell

# Start aws-shell, use TAB to auto-complete
aws-shell

# Upgrade aws-shell if needed
sudo pip install --upgrade aws-shell

# -- END of this -----------------------------------------------------------------------------

# Fixing install issues with homebrew
# If symbolic links fail, install as 'sudo'
# Fix symbolic links
 




