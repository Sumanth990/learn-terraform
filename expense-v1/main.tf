resource "aws_instance" "frontend" {
  ami                    = "ami-0f3c7d07486cad139"
  vpc_security_group_ids = ["sg-04683e9af944ef9c6"]
  instance_type          = "t3.micro"
  #Terraform standards - separate block separate with empty line, also maintains equals in same level
  tags = {
    Name = "frontend-dev"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z0087522270V65SMI1NKT"
  name    = "frontend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "backend" {
  ami                    = "ami-0f3c7d07486cad139"
  vpc_security_group_ids = ["sg-04683e9af944ef9c6"]
  instance_type          = "t3.micro"

  tags = {
    Name = "backend-dev"
  }
}

resource "aws_route53_record" "backend" {
  zone_id = "Z0087522270V65SMI1NKT"
  name    = "backend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.backend.private_ip]
}

resource "aws_instance" "mysql" {
  ami                    = "ami-0f3c7d07486cad139"
  vpc_security_group_ids = ["sg-04683e9af944ef9c6"]
  instance_type          = "t3.micro"

  tags = {
    Name = "mysql-dev"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z0087522270V65SMI1NKT"
  name    = "mysql-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}