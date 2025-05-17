module "ec2_instances" {
    for_each = var.instances
    source = "./module/ec2" 
    instance_type = each.value
    instance_name = each.key
    ami_id = data.aws_ami.ami_instance_id.id
}