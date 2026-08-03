# instances = {
#   frontend = {
#     instance_type = "t3.small"
#     disk_size = 30
#   }

#   catalogue = {
#     instance_type = "t3.small"
#     disk_size = 30
#   }

#   mongodb = {
#     instance_type = "t3.small"
#     disk_size = 20
#   }
#   redis = {
#     instance_type = "t3.small"
#     disk_size = 20
#   }
#   user = {
#     instance_type = "t3.small"
#     disk_size = 30
#   }
#   cart = {
#     instance_type = "t3.small"
#     disk_size = 30
#   }
#   mysql = {
#     instance_type = "t3.small"
#     disk_size = 20
#   }
#   shipping = {
#     instance_type = "t3.small"
#     disk_size = 30
#   }
#   rabbitmq = {
#     instance_type = "t3.small"
#     disk_size = 20
#   }
#   payment = {
#     instance_type = "t3.small"
#     disk_size = 30
#   }
# }

databases = {
  
    mysql = {
    instance_type = "t3.small"
    disk_size = 20
  }
  # mongodb = {
  #   instance_type = "t3.small"
  #   disk_size = 20
  # }
  # redis = {
  #   instance_type = "t3.small"
  #   disk_size = 20
  # }
  
  # rabbitmq = {
  #   instance_type = "t3.small"
  #   disk_size = 20
  # }
  
}

env = "dev"
# ami = "ami-09c813fb71547fc4f"
#ami ="ami-0220d79f3f480ecf5"
ami ="ami-0efb46ea3e8f46050"
# zone_id="Z02251823TLKC5608JSS7"
zone_id="Z033497019FA6Z9ADVSNL"
zone_name="sdevops09.shop"

eks= {
  main = {

    eks_version = 1.33
    subnet_ids = ["subnet-0140cdff0ddb3d2bf","subnet-0f57d136113c7abae"]
    node_groups ={
      one = {
        min_node = 1
        max_node = 10     
      }
    }
      

}
}