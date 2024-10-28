#!/usr/bin/env bash
set -e

root_path=$(realpath .)

item_path="file://${root_path}/item.json"

table_name="dynamodb-table-SimpleTable-1PNYFJZFRD9N9"

echo "puting item ${item_path}"

aws dynamodb put-item \
  --table-name $table_name \
  --item $item_path \
  --return-consumed-capacity TOTAL \
  --return-item-collection-metrics SIZE
