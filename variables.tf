variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket for Terraform state"
  default     = "manas-ecr-terraform-state-bucket123"
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table for state locking"
  default     = "terraform-locks"
}
