provider "aws" {
  region = "us-east-1"
}

module "networking" {
  source = "./modules/networking"
  prefix = var.prefix
  cidr_block = var.cidr_block
}

module "ecr" {
  source = "./modules/ecr"
  ecr_repo_names = var.ecr_repo_names
}

module "ec2" {
  source = "./modules/ec2"
  instance_type   = var.instance_type
  prefix = var.prefix
  subnet_id = module.networking.public_subnet_id
}