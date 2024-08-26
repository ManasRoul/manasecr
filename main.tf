provider "aws" {
  region = var.aws_region
}

module "ecr" {
  source = "./ecr"
}

module "s3" {
  source = "./s3"
}

module "dynamodb" {
  source = "./dynamodb"
}
