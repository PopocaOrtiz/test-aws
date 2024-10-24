import boto3
import json
import random
import time

firehose_client = boto3.client('firehose')

delivery_stream_name = 'MyDataFirehose'

def generate_sample_data():
	return {
		"timestamp": int(time.time()),
		"user_id": random.randint(1, 1000),
		"event_type": random.choice(['click', 'view', 'purchase']),
		"value": round(random.uniform(0, 100), 2),
	}


def send_data_firehose(data):
	try:
		response = firehose_client.put_record(
			DeliveryStreamName=delivery_stream_name,
			Record={
				"Data": json.dumps(data) + '\n'
			}
		)
		print(f"Record sent successfully. Record ID: {response['RecordId']}")
	except Exception as e:
		print(f"Error sending record to firehose: {str(e)}")


def main():
	while True:
		data = generate_sample_data()
		send_data_to_firehose(data)	
		time.sleep(1)


if __name__ == "__main__":
	main()
