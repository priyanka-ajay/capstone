# VPC Name
variable "vpc_name" {
  description = "Setting VPC Name"
  type = string 
  default = "capstone-vpc"
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "Selecting CIDR subnet for VPC"
  type = string 
  default = "10.0.0.0/16"
}

# VPC Availability Zones
variable "vpc_availability_zones" {
  description = "Selecting two Availability Zones for VPC"
  type = list(string)
  default = ["us-east-1a", "us-east-1b"]
}


# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "Seting up Public Subnets"
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

# VPC Private Subnets
variable "vpc_private_subnets" {
  description = "Seting up VPC Private Subnets"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

# Setting up tags
locals {
  common_tags = {
    Owner = "Priyanka"
    Terraform = "true"
    Name = "capstone"
  }
}
