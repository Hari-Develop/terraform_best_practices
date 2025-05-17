module "ec2_instances" {
    source = "./module/ec2"
    for_each = var.instances
    instance_type = each.value
    instance_name = each.key
    ami_id = data.aws_ami.ami_instance_id.id
}