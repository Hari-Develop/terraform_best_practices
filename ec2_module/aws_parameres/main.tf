
resource "aws_ssm_parameter" "nginx_dns" {
    name        = var.name
    description = var.description
    type        = var.type
    value       = var.value
    tags = var.tags
}
