variable "instance_type" {
  default = "t3.micro"
}

variable "vpc_security_group_ids" {
  default = "sg-05eadccf3fd7c62d1"
}

variable "components" {
  default = [ "backend", "frontend", "mysql"]
}

variable "zone_id" {
  default = "Z0531898YLDJ6DDU67F4"
}