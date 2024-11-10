#!/usr/bin/env bash

echo "deploying stack with a CreationPolicy configuration..."

STACK_NAME="stack-with-creationpolicy"

aws cloudformation deploy \
  --template-file template.yaml \
  --no-execute-changeset \
  --region us-east-1 \
  --capabilities CAPABILITY_NAMED_IAM \
  --stack-name $STACK_NAME
