resource "aws_instance" "test" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-05eadccf3fd7c62d1"]

  tags = {
    Name = "test"
  }
}