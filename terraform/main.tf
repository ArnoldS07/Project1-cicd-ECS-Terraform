provider "aws" {
  region = var.aws_region
}

module "network" {
  source             = "./modules/network"
  project_name       = var.project_name
  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
}

module "ecs" {
  source         = "./modules/ecs"
  project_name   = var.project_name
  vpc_id         = module.network.vpc_id
  public_subnets = module.network.public_subnets
  image_uri      = var.image_uri
}

output "alb_dns" {
  value = module.ecs.alb_dns
}

module "remote_backend" {
  source              = "./modules/backend"
  bucket_name         = "terraform-state-backend"
  dynamodb_table_name = "terraform-state-lock-table"
}
