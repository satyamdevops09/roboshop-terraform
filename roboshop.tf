provider "aws" {}

variable "ami"{
  default = "ami-09c813fb71547fc4f"
}
variable "instance_type"{
  default="t3.micro"
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "web"