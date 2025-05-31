output "instance_id" {
  value = {
    for name, inst in aws_instance.aws_ec2_instances :
    name => inst.id
  }
}

output "private_ip" {
  value = {
    for name, instance in aws_instance.aws_ec2_instances :
    name => instance.private_ip
    }
  }

