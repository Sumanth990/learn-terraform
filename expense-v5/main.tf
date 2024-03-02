module "app-resources" {
  source                 = "./modules/app-resources"
  for_each               = var.components
  instance_type          = lookup(each.value, "instance_type", "t2.micro")
  name                   = lookup(each.value, "name", null)
  vpc_security_group_ids = var.vpc_security_group_ids
  zone_id                = var.zone_id
}