# terragrunt-image

```
docker build \
  --build-arg TERRAFORM_VERSION=0.14.10 \
  --build-arg TERRAGRUNT_VERSION=0.28.24 \
  -t zillownyc/terragrunt:0.28.24_tf0.14.10 \
  -t zillownyc/terragrunt:0.28_tf0.14.10 \
  -t zillownyc/terragrunt:latest .
```
