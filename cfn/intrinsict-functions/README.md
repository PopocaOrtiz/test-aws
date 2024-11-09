# Update policy to avoid the ec2 instance to be updated

```
aws cloudformation set-stack-policy --stack-name stack-with-intrinsict-functions --stack-policy-body '{
  "Statement" : [
    {
      "Effect" : "Deny",
      "Action" : "Update:*",
      "Principal": "*",
      "Resource" : "LogicalResourceId/Instancia"
    }
  ]
}'
```
