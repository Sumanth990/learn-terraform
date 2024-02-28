resource "aws_instance" "instances" {
  count                  = length(var.components)
  ami                    = data.aws_ami.centos08.image_id
  vpc_security_group_ids = var.vpc_security_group_ids
  instance_type          = var.instance_type
  #Terraform standards - separate block separate with empty line, also maintains equals in same level
  tags = {
    Name = element(var.components,count.index)
  }
}

resource "aws_route53_record" "records" {
  count   = length(var.components)
  zone_id = var.zone_id
  name    = "${element(var.components,count.index)}-dev"
  type    = "A"
  ttl     = 30
  records = [element(aws_instance.instances.*.private_ip, count.index)]
}
