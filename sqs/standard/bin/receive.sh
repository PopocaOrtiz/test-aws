#!/usr/bin/env bash

echo "receive sqs message..."

QUEUE_URL="https://sqs.us-west-2.amazonaws.com/054037094833/sqs-standard-MyQueue-RNndEdv7G1OP"

aws sqs receive-message \
  --queue-url $QUEUE_URL \
  --attribute-names All \
  --message-attribute-names All \
  --max-number-of-messages 10