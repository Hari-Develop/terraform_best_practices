module "ec2_instances" {
  source        = "./module/ec2"
  for_each      = var.instances
  instance_type = each.value
  aws_ami       = data.aws_ami.ami_instance_id.id
  tags = {
    Name = "${var.env}-${each.key}"
  }
}

module "route_53" {
  source    = "./module/route_53"
  for_each  = var.instances
  domain    = var.domain
  instances = var.instances
  zone_id   = var.zone_id
  records   = [module.ec2_instances.private_ip[each.key]]
  name      = "${each.key}.${var.domain}"
}

module "aws_ssm_parameter" {
  source      = "./module/aws_parameres"
  for_each = module.route_53
  name        = "/${var.env}/${each.key}/dns"
  description = "The public DNS name for NGINX load balancer"
  type        = "String"
  value       = module.route_53[each.key].dns_name
  env         = var.env
  tags = {
    Environment = var.env
    Service     = each.key
  }
}