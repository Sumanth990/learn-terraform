module "ec2" {                                  #module1
  source = "./modules/ec2"
}

module "route53" {                              #module2
  source = "./modules/route53"
  private_ip = module.ec2.private_ip
}