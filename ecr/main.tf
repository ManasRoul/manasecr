provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "example_ecr" {
  name                 = var.ecr_repository_name
  image_tag_mutability = var.image_tag_mutability
  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }
}
