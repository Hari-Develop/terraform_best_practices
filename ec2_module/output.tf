output "ec2_instances_id" {
  value = module.ec2_instances.instance_id
}

output "dns_record" {
  value = { for k, mod in module.route_53 : k => mod.name }
}
