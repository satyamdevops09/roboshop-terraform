provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-s09"
    key    = "tools/terraform.tfstate"
    region = "us-east-1"
  }
}
