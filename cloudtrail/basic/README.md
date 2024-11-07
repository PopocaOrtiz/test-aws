# Create a Trail

## Create a bucket for the logs

aws s3 mb s3://my-cloudtrail-fer-adbl-1

## Allow CloudTrail to put to bucket

aws s3api put-bucket-policy \
  --bucket my-cloudtrail-fer-adbl-1 \
  --policy file://policy.json

## Create Trail

aws cloudtrail create-trail \
  --name MyTrail \
  --s3-bucket-name my-cloudtrail-fer-adbl-1 \
  --region us-east-1

## Start Logging

aws cloudtrail start-logging --name MyTrail

---

# Send CloudTrail logs to Cloud Watch

## Create log group

aws logs create-log-group \
  --log-group-name mycloudtrail

## Create policy to allow CloudTrail to put data to CloudWatch

## Update trail

aws cloudtrail update-trail \
  --name MyTrail \
  --cloud-watch-logs-log-group-arn arn:aws:logs:us-east-1:509399628058:log-group:mycloudtrail:* \
  --cloud-watch-logs-role-arn arn:aws:iam::509399628058:role/MyCT2CWRole
