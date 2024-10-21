#!/usr/bin/env bash

echo "== deploy sqs fifo =="

STACK_NAME="sqs-fifo"


root_path=$(realpath .)
template_path="${root_path}/template.yaml"

aws cloudformation deploy \
  --template-file $template_path \
  --capabilities CAPABILITY_NAMED_IAM \
  --no-execute-changeset \
  --region us-west-2 \
  --stack-name $STACK_NAME
