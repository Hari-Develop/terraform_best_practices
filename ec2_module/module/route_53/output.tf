output "dns_name" {
  value = {
    for name, record in aws_route53_record.route_53:
    name => record.fqdn
  }
}