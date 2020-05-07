ARG TERRAFORM_VERSION
FROM hashicorp/terraform:${TERRAFORM_VERSION}
ARG TERRAGRUNT_VERSION
RUN apk add curl && apk upgrade
RUN curl -L https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 -o /usr/local/bin/terragrunt \
  && chmod +x /usr/local/bin/terragrunt
