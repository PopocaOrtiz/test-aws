#!/usr/bin/env bash
set -e

STACK_NAME="rds-basic-database-v2"

echo "deploying $STACK_NAME..."

aws cloudformation deploy \
  --template-file template.yaml \
  --capabilities CAPABILITY_NAMED_IAM \
  --stack-name $STACK_NAME
