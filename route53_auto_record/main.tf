module "ec2_instances" {
  source = "./modules/ec2"
  for_each      = var.instance
  ami           = data.aws_ami.redhat.id
  instance_type = each.value.instance_type
  region        = each.value.region
  name          = each.key
}

module "route_53" {
  source   = "./modules/route53"
  for_each = module.ec2_instances
  zone_id  = data.aws_route53_zone.main.zone_id
  name     = "${module.ec2_instances.name}.dotdomain.online"
  type     = var.type
  records  = each.value.instance_private_id
}