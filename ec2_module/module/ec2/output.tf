output "instance_id" {
  value = aws_instance.aws_ec2_instances.id
}

output "private_ip" {
  value = aws_instance.aws_ec2_instances.private_ip
  }

