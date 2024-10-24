#!/usr/bin/env bash

echo "deploying secrets-manager..."

STACK_NAME="secrets-manager"

aws cloudformation deploy \
  --template-file template.yaml \
  --capabilities CAPABILITY_NAMED_IAM \
  --stack-name $STACK_NAME \
  --region us-east-1 \
  --no-execute-changeset
