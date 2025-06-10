provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./modules/vpc"
}

module "security_groups" {
  source = "./modules/security-groups"
}

module "autoscaling" {
  source = "./modules/autoscaling"
}

 
