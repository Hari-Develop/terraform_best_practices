output "instance_ids" {
    value = { for k, mod in module.ec2 : k => mod.instance_id }
}
