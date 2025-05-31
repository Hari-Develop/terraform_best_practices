resource "aws_instance" "aws_ec2_instances" {
  for_each = var.instances
  instance_type = each.value
  ami = var.aws_ami
  tags = {
    Name = each.key
    env = var.env
  }
}