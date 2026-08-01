variable "tools" {
  default  = {
    vault = {
      instance_type="t3.small"

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