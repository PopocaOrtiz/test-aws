# Examples of how to manage metadata

- Create test bucket

aws s3 mb s3://test-bucket-fer
BUCKET=test-bucket-fer

- Create test file

echo "World!" >> hello.txt

- Upload file

aws s3 cp hello.txt s3://$BUCKET
FILE=hello.txt

- Update file metadata

aws s3api put-objet --bucket $BUCKET --key $FILE --metadata Some=Thing,Owner=Me

- Retrieve metadata by using head

aws s3api head-object --bucket $BUCKET --key $FILE
