variable "vpc_security_group_ids" {
  default = ["sg-020e23d79f8100a7e"]
}

variable "zone_id" {
  default = "Z0541300TFTZV95S9TER"
}

variable "components" {
  default = {
    frontend = {                   # each.key - frontend is each.key
      name          = "frontend"   # each.value - whatever present in {} is each.value
      instance_type = "t3.micro"
    }
    backend = {
      name          = "backend"
      instance_type = "t3.micro"
    }
    mysql = {
      name          = "mysql"
      instance_type = "t3.small"
    }
  }
}