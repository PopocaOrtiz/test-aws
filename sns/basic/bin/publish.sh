#!/usr/bin/env bash
set -e

TOPIC_ARN="arn:aws:sns:us-west-2:054037094833:sns-basic-lambda-SNSTopic-PxeFoB9knhq2"

aws sns publish \
  --topic-arn $TOPIC_ARN \
  --message '{"first_name":"Fernando","last_name":"Popoca"}'
