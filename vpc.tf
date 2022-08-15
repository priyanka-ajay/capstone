module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.vpc_name}"
  cidr = var.vpc_cidr_block

  azs             = var.vpc_availability_zones 
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets

  enable_nat_gateway = true
  single_nat_gateway = true
  enable_vpn_gateway = false

  tags = {
    Terraform = "true"
    Environment = "capstone-proj"
  }
  
  # Subnet tags 
  public_subnet_tags = {
    Type = "Public Subnets"
    "kubernetes.io/role/elb" = 1
  }
  private_subnet_tags = {
    Type = "Private Subnets"
    "kubernetes.io/role/internal-elb" = 1
  }  
}
