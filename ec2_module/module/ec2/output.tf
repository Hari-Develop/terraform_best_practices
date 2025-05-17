output "instance_ids" {
    value = { for k, mod in ec2 : k => mod.instance_id }
}
