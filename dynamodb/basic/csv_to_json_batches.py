import csv
import json

table_name = "dynamodb-basic-table-Recipes-171BP7IBQVWPU"
batches = [{table_name: []}]

with open('recipes.csv') as csvfile:
	recipes_reader = csv.DictReader(csvfile)
	for row in recipes_reader:

		if len(batches[-1][table_name]) % 25 == 0:
			batches.append({table_name: []})

		batches[-1][table_name].append({
			"PutRequest": {
				"Item": {
					"Category": {'S': row['Category']},
					"Title": {'S': row['Title']},
					"Directions": {'S': row['Directions']},
				}
			}
		})

for i, batch in enumerate(batches):
	filename = f"batches/batch-{str(i).rjust(3,'0')}.json"
	filedata = json.dumps(batch, indent=4)
	with open(filename, 'w') as file:
		file.write(filedata)
