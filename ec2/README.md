- get metadata information (from inside the instance)
```
curl http://169.254.269.254/latest/meta-data
```

- modify metadata information

```
aws ec2 modify-instance-metadata-options \
  --instance-id $INSTANCE_ID \
  --http-tokens required

aws ec2 describe-instances \
  --query "Reservations[*].Instances[*].MetadataOptions"

# from inside of the instance
TOKEN=$(curl -X PUT http://169.254.169.254/latest/api/token -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

curl -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/meta-data/

aws ec2-instance-connect send-ssh-public-key \
  --instance-id i-014f88988b403e967 \
  --instance-os-user ec2-user \
  --ssh-public-key file://ec2sshkey.pub

ssh -i ec2sshkey ec2-user@35.173.254.232

```

# send a ssh and use it to connect to the instance