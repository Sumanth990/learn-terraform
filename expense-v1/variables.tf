variable "ami" {
  default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-05eadccf3fd7c62d1"]
}

variable "zone_id" {
  default = "Z0531898YLDJ6DDU67F4"
}