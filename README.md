# terragrunt-image

```
docker build \
  --build-arg TERRAFORM_VERSION=0.12.30 \
  --build-arg TERRAGRUNT_VERSION=0.28.18 \
  -t zillownyc/terragrunt:0.28.18 \
  -t zillownyc/terragrunt:0.28 \
  -t zillownyc/terragrunt:latest .
```
