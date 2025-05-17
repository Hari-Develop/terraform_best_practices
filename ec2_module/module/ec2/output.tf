output "instance_ids" {
    value = { for k, mod in module.ec2_instances : k => mod.instance_id }
}
