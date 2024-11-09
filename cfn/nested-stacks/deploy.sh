#!/usr/bin/env bash

echo "deploying nested stack..."

STACK_NAME="nested-stack"

aws cloudformation deploy \
  --template-file template.yaml \
  --no-execute-changeset \
  --region us-east-1 \
  --capabilities CAPABILITY_NAMED_IAM \
  --stack-name $STACK_NAME
