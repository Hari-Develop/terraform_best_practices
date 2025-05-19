output "instance_id" {
  value = aws_instance.aws_ec2_instances[*].id
}
