output "instance_id" {
  value = {
    for name, instance in aws_instance.aws_ec2_instances :
    name => instance.id
  }
}

output "private_ip" {
  value = {
    for name, instance in aws_instance.aws_ec2_instances :
    name => instance.private_ip
    }
  }

