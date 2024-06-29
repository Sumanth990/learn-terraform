module "ec2" {
  source = "./ec2"
}

module "route53" {
  source     = "./route53"
  private_ip = module.ec2.private_ip
}