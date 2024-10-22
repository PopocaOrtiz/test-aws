#!/usr/bin/env bash

echo "deploying kinesis data stream..."

STACK_NAME="kinesis-datastream"

root_path=$(realpath .)

template_path="${root_path}/template.yaml"

aws cloudformation deploy \
  --template-file $template_path \
  --stack-name $STACK_NAME \
  --region us-west-2 \
  --no-execute-changeset \
  --capabilities CAPABILITY_NAMED_IAM
