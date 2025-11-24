resource "aws_instance" "instances" {
  count=length(var.instances)
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.instances[count.index]
  }
}