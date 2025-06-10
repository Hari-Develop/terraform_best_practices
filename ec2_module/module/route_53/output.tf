output "dns_name" {
  value = {
    for name, inst in aws_route53_record.route_53:
    name => inst.name
  }
}
