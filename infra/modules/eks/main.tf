module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.27"
  vpc_id          = var.vpc_id
  subnet_ids      = var.public_subnets
  eks_managed_node_group_defaults = {
    default = {
      desired_capacity = 2
      max_capacity     = 5
      min_capacity     = 1
      instance_type    = "t3.medium"
    }
  }
}
