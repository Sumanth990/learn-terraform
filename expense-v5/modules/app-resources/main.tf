resource "aws_instance" "instances" {
  ami                    = data.aws_ami.centos08.image_id
  vpc_security_group_ids = var.vpc_security_group_ids
  instance_type          = var.instance_type
  #Terraform standards - separate block separate with empty line, also maintains equals in same level
  tags = {
    Name = var.name
  }
}

resource "aws_route53_record" "records" {
  zone_id  = var.zone_id
  name     = var.name
  type     = "A"
  ttl      = 30
  records = [ aws_instance.instances.private_ip ]
}
