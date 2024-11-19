#!/usr/bin/env bash
set -e

STACK_NAME="rds-basic-database"

echo "deploying $STACK_NAME..."

aws cloudformation deploy \
  --template-file template.yaml \
  --no-execute-changeset \
  --capabilities CAPABILITY_NAMED_IAM \
  --stack-name $STACK_NAME
