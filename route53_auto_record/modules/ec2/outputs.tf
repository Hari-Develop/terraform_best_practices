output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.main.id
}

output "instance_private_id" {
  value = aws_instance.main.private_ip
  description = "EC2 Private IP Address"
}

