import boto3
import json
from botocore.exceptions import ClientError

def get_secret():

	secret_arn = "arn:aws:secretsmanager:us-east-1:273354652629:secret:MySecret-EuKQWpzckQkV-Ln1ctq"
	region = "us-east-1"

	session = boto3.session.Session()
	client = session.client(
		service_name="secretsmanager",
		region_name=region,
	)

	try:
		secret = client.get_secret_value(
			SecretId=secret_arn,
		)
	except ClientError as e:
		print('ClientError')
		raise e

	secret_string = secret['SecretString']
	secret_value = json.loads(secret_string)

	print('username: ', secret_value['username'])
	print('password: ', secret_value['password'])
	

if __name__ == '__main__':
	get_secret()
