ARG KUBECTL_VERSION
ARG TERRAFORM_VERSION

FROM zillownyc/kubectl:${KUBECTL_VERSION} AS kubectl

FROM hashicorp/terraform:${TERRAFORM_VERSION} AS terragrunt

RUN apk update && apk add \
  build-base \
  ca-certificates \
  curl \
  groff \
  less \
  py-pip


ARG AWS_CLI_VERSION
RUN pip install awscli==${AWS_CLI_VERSION}

ARG TERRAGRUNT_VERSION
RUN curl -L https://github.com/gruntwork-io/terragrunt/releases/download/v${TERRAGRUNT_VERSION}/terragrunt_linux_amd64 -o /usr/local/bin/terragrunt \
  && chmod +x /usr/local/bin/terragrunt

COPY --from=kubectl /usr/local/bin/kubectl /usr/local/bin/
