instances = {
  frontend = {
    instance_type = "t3.small"
    disk_size = 30
  }

  catalogue = {
    instance_type = "t3.small"
    disk_size = 30
  }

  mongodb = {
    instance_type = "t3.small"
    disk_size = 20
  }
  redis = {
    instance_type = "t3.small"
    disk_size = 20
  }
  user = {
    instance_type = "t3.small"
    disk_size = 30
  }
  cart = {
    instance_type = "t3.small"
    disk_size = 30
  }
  mysql = {
    instance_type = "t3.small"
    disk_size = 20
  }
  shipping = {
    instance_type = "t3.small"
    disk_size = 30
  }
  rabbitmq = {
    instance_type = "t3.small"
    disk_size = 20
  }
  payment = {
    instance_type = "t3.small"
    disk_size = 30
  }
}

env = "dev"
# ami = "ami-09c813fb71547fc4f"
#ami ="ami-0220d79f3f480ecf5"
ami ="ami-0efb46ea3e8f46050"
zone_id="Z02251823TLKC5608JSS7"
zone_name="sdevops09.online"