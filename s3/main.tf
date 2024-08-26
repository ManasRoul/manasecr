provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket_object" "tfvars" {
  bucket = "manas-ecr-terraform-state-bucket123"  # Hardcoded bucket name
  key    = var.tfvars_key
  source = var.tfvars_source
}
