provider "aws" {
  region     = var.region
#  access_key = var.aws_access_key_id
#  secret_key = var.aws_secret_access_key
}

terraform {
  backend "s3" {
    bucket = "terraform-simple-web-app"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

