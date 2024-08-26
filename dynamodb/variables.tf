variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table for state locking"
  type        = string
  default     = "terraform-locks"
}

variable "hash_key_name" {
  description = "The name of the hash key for the DynamoDB table"
  type        = string
  default     = "LockID"
}

variable "billing_mode" {
  description = "The billing mode for DynamoDB (e.g., PAY_PER_REQUEST)"
  type        = string
  default     = "PAY_PER_REQUEST"
}

variable "hash_key_type" {
  description = "The data type of the hash key (e.g., S for string)"
  type        = string
  default     = "S"
}
