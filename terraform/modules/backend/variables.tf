variable "bucket_name" {
  description = "Name of the S3 bucket"
  default     = "arnold-terraform-ecs-proj007"
}

variable "dynamodb_table_name" {
  description = "Name of the DynamoDB table"
  default     = "arnold-terraform-ecs-proj-db-terraform-state-lock"
}
