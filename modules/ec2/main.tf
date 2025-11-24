resource "aws_instance" "instances" {

  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "${var.name}-${var.env}"
  }
}