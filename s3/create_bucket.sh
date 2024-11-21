#!/usr/bin/env bash

if [ -z "$1" ]; then
  echo "bucket name missing"
  exit 1
fi

aws s3api create-bucket --bucket $1
