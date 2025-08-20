variable "project_name" {
  type = string
}

variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "vpc_id" {
  type = string
}

variable "public_subnets" {
  type = list(string)
}


variable "container_port" {
  type    = number
  default = 80
}

variable "desired_count" {
  type    = number
  default = 1
}

variable "cpu" {
  type    = number
  default = 256   # 0.25 vCPU
}

variable "memory" {
  type    = number
  default = 512   # 0.5 GB
}

# This will be set by GitHub Actions during deployment
variable "image_uri" {
  description = "Container image URI in ECR"
  type        = string
}

# Optional environment variables for the container
variable "env" {
  type = map(string)
  default = {
    APP_ENV = "dev"
  }
}
