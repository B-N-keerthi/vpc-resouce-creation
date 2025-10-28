terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }
}

provider "aws" {
  region = var.aws-region
}

  resource “aws_vpc” “nonprod-vpc” {
    cidr_block = “var.cidr-block”
    enable_dns_support = “true”
    enable_dns_hostnames = “true” 
  
  tags = {
    Name = var.vpc_name
  }
  }


