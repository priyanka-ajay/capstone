terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.24.0"
    }
  }
  backend "s3" {
    bucket = "capstone-tf-backend-pr"
    key = "states/terraform.tfstate"
    region = "us-east-1"
  } 
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}
