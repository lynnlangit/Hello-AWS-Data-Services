# Create EMR cluster w/Spark using AWS Web UI or other method (i.e. aws cli....)
# Wait for cluster to become `available`
# Go to `Notebooks` section of EMR AWS Web UI
# Create Notebook for your EMR cluster using AWS Web UI or other method (i.e. aws cli...)
# Wait for Notebook to become `ready`
# Connect to Notebook using AWS WebUI
    - Jupyter Notebook --OR--
    - Jupyter Hub
# Use Notebook to run Spark jobs
    - Set notebook runtime to `PySpark` (could also use Python3)
    - Terminal window is available via notebook interface as well