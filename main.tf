resource "aws_s3_bucket" "app_bucket" {

  bucket = "localstack-iac-demo-bucket"

  tags = {
    Name        = "LocalStack IaC Demo"
    Environment = "local"
  }
}