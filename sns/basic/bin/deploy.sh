#! /usr/bin/env bash
set -e

# deploying using sam
root_path=$(realpath .)

echo "== SAM deploy... =="

sam deploy \
  --template-file "./.aws-sam/build/template.yaml" \
  --stack-name "sns-basic-lambda" \
  --capabilities "CAPABILITY_IAM"
