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
  records   = [module.ec2_instances[each.key].private_ip]
  name      = "${each.key}.${env}.${var.domain}"
}

module "aws_ssm_parameter" {
  source      = "./module/aws_parameres"
  for_each    = var.parameters
  name        = each.value.name
  description = "The public DNS name for NGINX load balancer"
  type        = "String"
  value       = each.value.value
  env         = var.env
  tags = {
    Environment = var.env
    Service     = each.key
  }
}