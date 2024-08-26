resource "aws_s3_bucket" "terraform_state" {
  bucket = var.s3_bucket_name
  versioning {
    enabled = true
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket_object" "tfvars" {
  bucket = aws_s3_bucket.terraform_state.bucket
  key    = "terraform.tfvars"
  source = "terraform.tfvars"
}
