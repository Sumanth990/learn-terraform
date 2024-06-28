variable "components" {
  default = {
    frontend = {
      instance_type = "t3.micro"
      name = "frontend"
    }
    backend = {
      instance_type = "t3.micro"
      name = "backend"
    }
    mysql = {
      instance_type = "t3.micro"
      name = "mysql"
    }
  }
}

variable "zone_id" {
 default = "Z0531898YLDJ6DDU67F4"
}

variable "vpc_security_group_ids" {
  default = "sg-05eadccf3fd7c62d1"
}