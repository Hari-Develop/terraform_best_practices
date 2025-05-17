module "ec2_instances" {
    source = "./module/ec2"
    ami_id = var.ami_id
    for_each = var.instances
    instance_type = each.value
    instance_name = each.key
}