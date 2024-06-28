resource "aws_instance" "frontend" {
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-05eadccf3fd7c62d1"]

  tags = {
    Name = "frontend-dev"
  }
}

resource "aws_instance" "backend" {
  ami                    = "ami-0b4f379183e5706b9"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-05eadccf3fd7c62d1"]

  tags = {
    Name = "backend-dev"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z0531898YLDJ6DDU67F4"
  name    = "frontend-dev"
  type    = "A"
  ttl     = 30
  records = aws_instance.frontend.private_ip
}
