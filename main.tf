module "ec2" {
  for_each = var.instances
  source = "./modules/ec2"
}