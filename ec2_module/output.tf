
output "ec2_instances_id" {
  value = { for k, mod in module.ec2_instances : k => mod.instance_id }
}

output "dns_record" {
  value = { for k, mod in module.route_53 : k => mod.dns_name }
}

output "private_ip" {
  value = { for k, mod in module.ec2_instances : k => mod.private_ip }
}
