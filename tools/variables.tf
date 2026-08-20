variable "tools" {
  default  = {
    vault = {
      instance_type="t3.small"

    }

    github-runner = {
      instance_type="t3.small"
      iam_policy = ["*"]
      disk_size = 30
    }

  }
}
variable "ami" {
  default="ami-0220d79f3f480ecf5"
}
variable "zone_id" {
  default="Z033497019FA6Z9ADVSNL"
}

variable "token" {}

variable "ecr" {
  default = {
    frontend = "IMMUTABLE"
    cart = "IMMUTABLE"
    catalogue = "IMMUTABLE"
    user = "IMMUTABLE"
    shipping = "IMMUTABLE"
    payment = "IMMUTABLE"
  }
}