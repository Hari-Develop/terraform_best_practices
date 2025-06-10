
resource "aws_ssm_parameter" "nginx_dns" {
    name        = var.name
    description = var.description
    type        = var.type
    value       = var.value
    tags = var.tags
}
module "aws_ssm_parameter" {
  source = "./module/aws_parameres"
  for_each = module.route_53.dns_record
  name = "/${var.env}/${each.key}/dns"
  description = "The public DNS name for NGINX load balancer"
  type = "String"
  value = each.value.fqdn
  env = var.env
  tags = {
    Environment = var.env
    Service     = each.key
  }
}
