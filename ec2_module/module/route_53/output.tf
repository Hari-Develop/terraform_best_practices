output "route53_record_names" {
  description = "Map of instance key → Route53 record name"
  value = {
    for inst_key, mod in module.route_53 :
    inst_key => mod.record_name
  }
}
