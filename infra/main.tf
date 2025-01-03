# Provider Configuration
provider "aws" {
  region = local.region
}

# VPC Module
module "vpc" {
  source               = "./modules/vpc"
  vpc_name             = "VR-Fashion-VPC"
  cidr_block           = "10.0.0.0/16"
  public_subnet_count  = 2
  private_subnet_count = 2
}

# EC2 Module
module "ec2" {
  source          = "./modules/ec2"
  subnet_id       = module.vpc.public_subnet_ids[0]
  security_group_id = module.vpc.default_security_group_id
  ami             = local.ami
  instance_type   = local.instance_type
  key_name        = local.key_name
}

# S3 Module
module "s3" {
  source  = "./modules/s3"
  bucket_name = local.bucket_name
}

# EKS Module
module "eks" {
  source          = "./modules/eks"
  vpc_id          = module.vpc.vpc_id
  public_subnets  = module.vpc.public_subnet_ids
  cluster_name    = local.cluster_name
}

# Outputs
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "ec2_instance_public_ip" {
  value = module.ec2.public_ip
}

output "s3_bucket_name" {
  value = module.s3.bucket_name
}

output "eks_cluster_name" {
  value = module.eks.cluster_name
}
