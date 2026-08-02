data "aws_security_group" "allow-all" {
  name = "allow-all"
}

data "vault_generic_secret" "ssh-creds" {
  count  = var.env == null ? 0 : 1
  path = "roboshop-infra/ssh"
}