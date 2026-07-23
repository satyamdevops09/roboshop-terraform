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

provider "vault" {
  address = "http://vault-internal.sdevops09.shop:8200"
  token = var.token
}

