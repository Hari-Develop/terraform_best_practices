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
  for_each = var.route53
  zone_id  = data.aws_route53_zone.main.zone_id
  name     = each.value.name
  type     = each.value.type
  records  = each.value.records
  ttl = each.value.ttl
}
