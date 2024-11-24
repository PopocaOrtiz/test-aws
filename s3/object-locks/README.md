# Enable object lock

- enable versioning

`aws s3api put-bucket-versioning --bucket $BUCKET --versioning-configuration State=Enabled`

- enable config lock type governance

`aws s3api put-objeck-lock-configuration --bucket $BUCKET --object-lock-configuration '{"ObjectLockEnabled": "Enabled", "Rule": {"DefaultRetention": {"Mode": "GOVERNANCE", "Days": 1}}}'`

- upload a file

`aws s3 cp file.txt s3://$BUCKET`

- list versions (version is enabled)

`aws s3api list-versions --bucket $BUCKET`

- delete a version (use the flag bypass-governance-retention)

`aws s3api delete-object --bucket $BUCKET --version-id ... --key some.txt --bypass-governance-retention`

**Use compliance mode**

- upload object

`aws s3api put-object --bucket $BUCKET --key file_name.txt --body local_file.txt --object-lock-mode COMPLIANCE --object-lock-retain-until-date 2024-11-24T00:00:00Z`

- try to delete will fail even with special flag

`aws s3api delete-object --bucket $BUCKET --key file_name --version-id ... --bypass-governance-retention`

** Legal Hold **

- upload file

- activate legal hold

`aws s3 put-object-legal-hold --bucket $BUCKET --key legal.txt --legal-hold Status=ON`

- disable legal hold

`aws s3 put-object-legal-hold --bucket $BUCKET --key legal.txt --legal-hold Status=OFF`
