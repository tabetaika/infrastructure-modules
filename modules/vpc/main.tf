module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "4.0.1"

  name = var.env_name
  cidr = var.cidr

  azs             = local.availility_zones
  private_subnets = local.private_subnets
  public_subnets  = local.public_subnets

  enable_nat_gateway = var.enable_nat_gateway

  tags = {
    Terraform = var.tf_path
    Environment = var.env_name
  }
}