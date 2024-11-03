- Create a policy
```sh
aws iam create-policy \
  --policy-name access-to-s3 \
  --policy-document file://policy.json
```

- Attach a policy to an user
```sh
aws iam attach-user-policy \
  --policy-arn arn:aws:iam::509399628058:policy/access-to-s3 \
  --user-name TheUser
```
