output "dns_record"{
  value = {
    for k, rec in aws_route53_record.route_53:
    k => rec.fqdn
  }
}