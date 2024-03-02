resource "aws_instance" "instances" {
  for_each               = var.components
  ami                    = data.aws_ami.centos08.image_id
  vpc_security_group_ids = var.vpc_security_group_ids
  instance_type          = lookup(each.value,"instance_type", "t2.micro")
  #Terraform standards - separate block separate with empty line, also maintains equals in same level
  tags = {
    Name = lookup(each.value, "name", null)
  }
}

resource "aws_route53_record" "records" {
  for_each = var.components
  zone_id  = var.zone_id
  name     = lookup(each.value, "name", null)
  type     = "A"
  ttl      = 30
  records  = [lookup(lookup(aws_instance.instances,each.key, null), "private_ip", null)]
 #records = [aws_instance.instances[each.key].private_ip] alternate for beginners
}
