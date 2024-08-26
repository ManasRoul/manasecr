variable "s3_bucket_name" {
  description = "The name of the S3 bucket for Terraform state"
  type        = string
}

variable "tfvars_key" {
  description = "The key under which to store the terraform.tfvars file in the bucket"
  type        = string
  default     = "terraform.tfvars"
}

variable "tfvars_source" {
  description = "The source path of the terraform.tfvars file"
  type        = string
  default     = "terraform.tfvars"
}
