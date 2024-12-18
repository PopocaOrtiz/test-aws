#!/usr/bin/env bash

set -e

OUTPUT_DIR="/tmp/s3-bash-scripts"

mkdir -p $OUTPUT_DIR

NUM_FILES=$((RANDOM % 6 + 5))

for ((i=1; i <= $NUM_FILES; i++)); do
  FILENAME="$OUTPUT_DIR/file_$i.txt"

  dd if=/dev/urandom of="$FILENAME" bs=1024 count=$((RANDOM % 1024 + 1)) 2>/dev/null
done

tree $OUTPUT_DIR
