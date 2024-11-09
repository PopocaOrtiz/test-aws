#!/usr/bin/env bash

echo "deploying stack with intrinsict functions..."

STACK_NAME="stack-with-intrinsict-functions"

aws cloudformation deploy \
  --template-file template.yaml \
  --no-execute-changeset \
  --region us-east-1 \
  --capabilities CAPABILITY_NAMED_IAM \
  --stack-name $STACK_NAME
