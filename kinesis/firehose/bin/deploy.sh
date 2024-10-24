#!/usr/bin/env bash

echo "deploying kinesis firehose..."

root_path=$(realpath .)
template_path="${root_path}/template.yaml"

STACK_NAME="kinesis-firehose"

aws cloudformation deploy \
  --template-file $template_path \
  --stack-name $STACK_NAME \
  --no-execute-changeset \
  --region us-east-1 \
  --capabilities CAPABILITY_NAMED_IAM
