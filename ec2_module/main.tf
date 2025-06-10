module "ec2_instances" {
  source     = "./module/ec2"
  aws_ami    = data.aws_ami.ami_instance_id.id
  instances  = var.instances
  env        = var.env
}

module "route_53" {
  source = "./module/route_53"
  for_each = var.instances
  instances = each.key
  zone_id = var.zone_id
  records = [module.ec2_instances.private_ip[each.key]]
}

module "aws_ssm_parameter" {
  source = "./module/aws_parameres"
  for_each = module.route_53.dns_name
  name = "/${var.env}/${each.key}/dns"
  description = "The public DNS name for NGINX load balancer"
  type = "String"
  value = each.value
  env = var.env
  tags = {
    Environment = var.env
    Service     = each.key
  }
}
