provider "aws" {
  region = var.aws_region
}

module "network" {
  source = "./modules/network"
  project_name = var.project_name
}

module "ecs" {
  source = "./modules/ecs"
  vpc_id          = module.network.vpc_id
  public_subnets  = module.network.public_subnets
  project_name = var.project_name
  cpu          = var.cpu
  memory       = var.memory
  container_port = var.container_port
  image_uri    = "${module.ecr.repository_url}:latest"  # using repo from ECR module
  aws_region   = var.aws_region
  env          = var.env
}
