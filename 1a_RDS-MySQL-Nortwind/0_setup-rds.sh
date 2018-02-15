# for demo setup single node dev edition RDS with MySQL all defaults and with public access

# download 14-day trial Navicat as client
# connect to instance endpoint, rather than cluster if using more than one node
# connection string includes 1)endpoint 2)port <3306> 3)username 4)password

# new query -> create a database
Create-Northwind.sql
# refresh and switch to that database

# new query -> load data
AddData-Northwind.sql

# new query -> query data
Query-Northwind.sql