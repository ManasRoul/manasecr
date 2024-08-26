module "ecr" {
  source = "./ecr"

  ecr_repository_name = "example-manas_repo"
  image_tag_mutability = "MUTABLE"
  scan_on_push = true
}

module "s3" {
  source = "./s3"

  tfvars_key = "terraform.tfvars"
  tfvars_source = "terraform.tfvars"
}

module "dynamodb" {
  source = "./dynamodb"

  billing_mode = "PAY_PER_REQUEST"
  hash_key_name = "LockID"
  hash_key_type = "S"
}

terraform {
  backend "s3" {
    bucket         = "manas-ecr-terraform-state-bucket123"  # Hardcoded bucket name
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"  # Hardcoded DynamoDB table name
    encrypt        = true
  }
}
