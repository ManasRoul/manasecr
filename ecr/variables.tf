variable "ecr_repository_name" {
  description = "The name of the ECR repository"
  type        = string
  default     = "example-manas_repo"
}

variable "image_tag_mutability" {
  description = "The tag mutability setting for the repository (MUTABLE or IMMUTABLE)"
  type        = string
  default     = "MUTABLE"
}

variable "scan_on_push" {
  description = "Enable image scanning on push"
  type        = bool
  default     = true
}
