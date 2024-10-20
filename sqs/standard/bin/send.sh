#!/usr/bin/env bash

echo "sending sqs message..."

root_path=$(realpath .)
message_attributes_path="file://${root_path}/send-message.json"

QUEUE_URL="https://sqs.us-west-2.amazonaws.com/054037094833/sqs-standard-MyQueue-RNndEdv7G1OP"

aws sqs send-message \
  --queue-url $QUEUE_URL \
  --message-body "hello queue" \
  --delay-seconds 10 \
  --message-attributes $message_attributes_path
