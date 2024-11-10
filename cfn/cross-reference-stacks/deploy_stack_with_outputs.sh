#!/usr/bin/env bash

echo "deploying stack that outputs an s3 bucket name..."

STACK_NAME="stack-with-s3-bucket"

aws cloudformation deploy \
  --template-file template_with_output.yaml \
  --no-execute-changeset \
  --region us-east-1 \
  --capabilities CAPABILITY_NAMED_IAM \
  --stack-name $STACK_NAME
