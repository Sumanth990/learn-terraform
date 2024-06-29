data "aws_ami" "centos08" {
  most_recent = true
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

resource "aws_instance" "ec2" {
  ami           = data.aws_ami.centos08.image_id
  instance_type = "t3.micro"

  tags = {
    Name = "test"
  }
}