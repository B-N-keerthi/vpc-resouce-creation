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
########################################################
# vpc creation
########################################################
  resource “aws_vpc” “nonprod-vpc” {
    cidr_block = “var.cidr-block”
    enable_dns_support = “true”
    enable_dns_hostnames = “true” 
  
  tags = {
    Name = var.vpc_name
  }
  }
########################################################
# subnet creation
########################################################  
resource "aws_subnet" "main_subnet" {
vpc_id                    = aws_vpc.main_vpc.id
cidr_block                = var.subnet_cidr
availability_zone         = var.availability_zone
map_public_ip_on_launch   = true

tags = {
Name = var.subnet_name
}
}
