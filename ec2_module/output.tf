output "ec2_instances_id" {
  value = module.ec2_instances.instance_id
}

output "dns_record"{
  value = module.route_53.dns_name
}
