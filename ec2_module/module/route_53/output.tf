output "dns_name" {
  description = "The DNS record name (FQDN)"
  value       = aws_route53_record.route_53.name
}