provider "aws" {}

variable "ami"{
  default = "ami-09c813fb71547fc4f"
}
variable "instance_type"{
  default="t3.micro"
}

variable "instances" {
  default = ["frontend","catalogue","MongoDB","Redis","User","Cart","MySQL","Shipping","RabbitMQ","Payment"]
}

resource "aws_instance" "instances" {
  count=length(var.instances)
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.instances[count.index]
  }
}