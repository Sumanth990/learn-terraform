variable "ami" {
  default = "ami-0f3c7d07486cad139" #since it's a string we are double quoting it.
}

variable "instance_type" {
  default = "t3.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-04683e9af944ef9c6"]
}

variable "zone_id" {
  default = "Z0087522270V65SMI1NKT"
}