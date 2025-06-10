output "dns_names" {
  value = {
    for k, v in aws_route53_record.route_53 : k => v.name
  }
}
