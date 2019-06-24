# 1. Create a bucket - bucketname must be globally unique
aws s3 mb <my-unique-bucket-name>

# 2. Verify bucket was created by listing all buckets
aws s3 ls

# 3. Upload a file to your bucket
aws s3 cp /<my-path>/<my-file> s3://<my-unique-bucket-name>/
EXAMPLE: aws s3 cp test.txt s3://mybucket/test2.txt

# 4. Rename the file
aws s3 –recursive mv s3://<my-unique-bucket-name>/<folder_name_from>/<old_file_name> \
 s3://<my-unique-bucket-name>/<folder_name_to>/<new_file_name>

# 5. Delete the file
aws s3 rm s3://<my-unique-bucket-name>/<my-file>

# 6. Remove the empty bucket
aws s3 rb <my-unique-bucket-name>
NOTE: aws s3 rb <my-unique-bucket-name> --force deletes bucket and its files

# 7. Learn more
https://docs.aws.amazon.com/cli/latest/reference/s3/index.html