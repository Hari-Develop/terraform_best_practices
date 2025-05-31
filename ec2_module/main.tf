module "ec2_instances" {
  source = "./module/ec2"
  aws_ami = data.aws_ami.ami_instance_id.id
  for_each = var.instances
  instance_type = each.value
  instance_name = each.key
  env = var.env
}

module "route_53" {
  source = "./module/route_53"
  for_each = var.instances
  instances = each.key
  zone_id = var.zone_id
}