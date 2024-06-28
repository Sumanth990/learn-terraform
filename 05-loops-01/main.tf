resource "null_resource" "test" {
  count = 10
}

output "test" {
  value = null_resource.test[0]
}

output "test2" {
  value = null_resource.test.*
}

resource "aws_instance" "test" {
  count                  = 3
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-05eadccf3fd7c62d1"]

  tags = {
    Name = "test-${count.index}"
  }
}