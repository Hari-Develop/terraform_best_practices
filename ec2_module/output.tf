output "ec2_instances_id" {
    value = { for k, mod in module.ec2_instances : k => mod.instance_id }
}
