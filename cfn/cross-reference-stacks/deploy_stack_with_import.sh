#!/usr/bin/env bash

echo "deploying stack that import an output from another stack..."

STACK_NAME="stack-with-import"

aws cloudformation deploy \
  --template-file template_with_import.yaml \
  --no-execute-changeset \
  --region us-east-1 \
  --capabilities CAPABILITY_NAMED_IAM \
  --stack-name $STACK_NAME
