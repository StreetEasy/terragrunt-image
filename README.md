# terragrunt-image

```
docker build \
  --build-arg TERRAFORM_VERSION=0.12.24 \
  --build-arg TERRAGRUNT_VERSION=0.23.4 \
  -t zillownyc/terragrunt:0.23.4 \
  -t zillownyc/terragrunt:0.23 \
  -t zillownyc/terragrunt:latest .
```
