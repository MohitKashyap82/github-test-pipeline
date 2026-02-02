variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "tf_state_bucket" {
  description = "S3 bucket to store Terraform state"
  type        = string
  default     = "mohit-tf-test-bucket"
}

