variable "project_name" { type = string }
variable "aws_region"   { type = string  default = "ap-south-1" }

variable "vpc_cidr" { type = string default = "10.0.0.0/16" }
variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "container_port" { type = number default = 80 }
variable "desired_count"  { type = number default = 1 }
variable "cpu"            { type = number default = 256 }      # 0.25 vCPU
variable "memory"         { type = number default = 512 }      # 0.5 GB

# This will be set by GitHub Actions each deployment
variable "image_uri" {
  description = "Container image URI in ECR"
  type        = string
  default     = "${data.aws_ecr_repository.app_repo.repository_url}:latest"
}

# Optional environment variables for the container
variable "env" {
  type    = map(string)
  default = {
    APP_ENV = "dev"
  }
