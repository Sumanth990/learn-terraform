resource "aws_route53_record" "records" {
  zone_id = "Z0087522270V65SMI1NKT"
  name    = "test"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "private_ip" {}