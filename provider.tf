terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"

  access_key = "test"
  secret_key = "test"

  endpoints {
    s3       = "http://localhost:4566"
    dynamodb = "http://localhost:4566"
    sqs      = "http://localhost:4566"
    iam      = "http://localhost:4566"
  }

  s3_use_path_style = true

  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true
}