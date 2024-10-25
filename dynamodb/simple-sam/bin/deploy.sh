#!/usr/bin/env bash
set -e

root_path=$(realpath .)

template_path="${root_path}/template.yml"

STACK_NAME="dynamodb-table"

echo "deploying dynamodb table..."

sam deploy \
  --template-file "./.aws-sam/build/template.yaml" \
  --stack-name $STACK_NAME \
  --capabilities "CAPABILITY_IAM" \
  --no-execute-changeset
