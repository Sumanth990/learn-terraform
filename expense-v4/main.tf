resource "aws_instance" "instances" {
  for_each      = var.components
  ami           = data.aws_ami.centos8.image_id
  instance_type = lookup(var.components, "instance_type", "t3.micro")
  vpc_security_group_ids = [var.vpc_security_group_ids]

  tags = {
    Name = "${lookup(var.components, "name", null)}-dev"
  }
}

resource "aws_route53_record" "www" {
  for_each = var.components
  zone_id  = var.zone_id
  name     = "${lookup(var.components, "name", null)}-dev"
  type     = "A"
  ttl      = 30
  records  = [lookup(lookup(aws_instance.instances, each.key, null), "private_ip", null)]
}