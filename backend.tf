terraform {
    backend "s3" {
      bucket = "s3-terraform-state-bucket-000 "
      key    = "Infra/vpc-creation.tfstate"
      region = "eu-north-1"
    }
}