# Terraform state will be stored in S3
terraform {
  backend "s3" {
    bucket = "terraform-bucket-gabor"
    key    = "terraform.tfstate"
    region = "eu-west-2"
  }
}

provider "aws" {
	region = var.region 
}

