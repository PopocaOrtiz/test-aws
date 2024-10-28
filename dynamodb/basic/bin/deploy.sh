#!/usr/bin/env bash
set -e

root_path=$(realpath .)

template_path="${root_path}/template.yaml"

STACK_NAME="dynamodb-basic-table"

echo "deploying dynamodb basic table..."

aws cloudformation deploy \
  --template-file $template_path \
  --no-execute-changeset \
  --capabilities CAPABILITY_NAMED_IAM \
  --stack-name $STACK_NAME
