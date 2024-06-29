resource "aws_instance" "test" {
  instance_type = var.instance_type == null ? "t3.micro" : var.instance_type
  ami           = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
  default = null
}