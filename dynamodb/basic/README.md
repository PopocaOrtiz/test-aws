- check the status of a table
```
# get the name of then table as it was generate by CF
table_name=$(aws dynamodb list-tables --query "TableNames[0]" --output text

aws dynamodb describe-table --table-name $table_name --query "Table.TableStatus" --output text

# get a single item based in it's keys
aws dynamodb get-item --table-name $table_name --key file://key.json
```
