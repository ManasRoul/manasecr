resource "aws_ecr_repository" "example_ecr" {
  name                 = "example-manas_repo"
  image_tag_mutability = "MUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }
}
