output "instance_id" {
  value = aws_instance.aws_ec2_instances[*].id
}

output "private_ip" {
  value = {
    for name, instances in aws_instance.aws_ec2_instances: name => {
      name = name
      private_ip = aws_instance.aws_ec2_instances.instance.private_ip
    }
  }
}

