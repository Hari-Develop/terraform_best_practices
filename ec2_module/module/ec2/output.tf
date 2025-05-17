output "instance_id" {
    value = { for k, inst in aws_instance.ec2 : k => inst.id }
}
