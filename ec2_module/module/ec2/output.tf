output "instance_id" {
  value = aws_instance.aws_ec2_instances[*].id
}

output "private_ip" {
  value = {
    for name, instance in aws_instance.aws_ec2_instances :
    name => instance.private_ip
    }
  }

