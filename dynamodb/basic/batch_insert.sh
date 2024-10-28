#!/usr/bin/env bash

BASE_CMD="aws dynamodb batch-write-item --request-items file://"

BATCH_DIR="batches"

for file in ${BATCH_DIR}/batch-*.json; do
	if [ -f "$file" ]; then
		echo "Processing $file..."
		echo $BASE_CMD"$file"
		$BASE_CMD"$file"
		echo "----------------------"
	fi
done

echo "All files processed."
