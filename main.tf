module "ec2" {
  for_each = var.instances
  source = "./modules/ec2"
  ami      = var.ami
  env      = var.env
  instance_type = each.valu["instance_type"]
  name= each.key
}