# Terraform + LocalStack S3 Demo

This project uses Terraform and the AWS provider to create an S3 bucket in a
local [LocalStack](https://www.localstack.cloud/) instance. It is intended for
local development and testing; it does not deploy resources to AWS.

## Prerequisites

- Terraform CLI
- Docker
- LocalStack running and exposing its edge port on `localhost:4566`

The AWS provider is configured to use LocalStack at `http://localhost:4566`
with dummy credentials. Do not use this provider configuration to manage
production AWS resources.

## Usage

From this directory, initialize Terraform and review the planned change:

```shell
terraform init
terraform plan
```

Apply the configuration to create the bucket:

```shell
terraform apply
```

Confirm the prompt when Terraform asks to apply the changes. The bucket is
named `localstack-iac-demo-bucket` and is tagged with its name and local
environment.

To remove the bucket and other resources managed by this configuration:

```shell
terraform destroy
```

## Configuration

- `provider.tf` selects AWS region `ap-south-1` and directs supported AWS
  services to LocalStack.
- `main.tf` declares the S3 bucket.
- `.terraform.lock.hcl` records the selected AWS provider version. Keep this
  file under version control.

Terraform state files may contain sensitive information. They are excluded
from version control by `.gitignore`; do not commit state files or real
credentials.