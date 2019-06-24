# 1a. Create a bucket - bucketname must be globally unique
aws s3 mb s3://<my-unique-bucket-name>

# 1b. Tag a bucket
aws s3api put-bucket-tagging --bucket <my-unique-bucket-name> --tagging file://tagging.json
NOTE: **s3api** commands provide direct access to the S3 APIs & enable some operations that are not exposed in the high-level s3 commands

# 2. Verify bucket was created by listing all buckets
aws s3 ls

# 3a. Upload a file to your bucket
aws s3 cp /<my-path>/<my-file> s3://<my-unique-bucket-name>/
EXAMPLE: aws s3 cp test.txt s3://mybucket/test2.txt

# 3b. List the contents of your bucket
aws s3 ls s3://<my-unique-bucket-name>

# 4. Rename the file
aws s3 –recursive mv s3://<my-unique-bucket-name>/<folder_name_from>/<old_file_name> \
 s3://<my-unique-bucket-name>/<folder_name_to>/<new_file_name>

# 5. Delete the file
aws s3 rm s3://<my-unique-bucket-name>/<my-file>

# 6. Remove the empty bucket
aws s3 rb s3://<my-unique-bucket-name>
NOTE: aws s3 rb s3://<my-unique-bucket-name> --force deletes bucket and its files

# 7. Learn more
https://docs.aws.amazon.com/cli/latest/reference/s3/index.html
