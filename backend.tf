# NOTE: Do NOT run 'terraform init' with this backend block before creating the S3 bucket and DynamoDB table.
# Steps:
# 1) Comment out or remove the `terraform { backend "s3" { ... } }` block below and run:
#      terraform init
#      terraform apply
#    This will create the S3 bucket and DynamoDB table.
# 2) Then uncomment / enable the backend block below and run:
#      terraform init -migrate-state
#    This will configure the remote backend and migrate your state to S3.

terraform {
  backend "s3" {
    bucket         = "mohit-tf-test-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}
