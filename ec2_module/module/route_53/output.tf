

output "dns_names" {
  description = "Map of instance keys to their DNS record names"
  value = {
    for k, v in aws_route53_record.route_53 : k => v.name
  }
}
