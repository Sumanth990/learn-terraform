resource "aws_route53_record" "records" {
  zone_id = "Z0531898YLDJ6DDU67F4"
  name    = "test"
  type    = "A"
  ttl     = 30
  records = [var.private_ip]
}

variable "private_ip" {}