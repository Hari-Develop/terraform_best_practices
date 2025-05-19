resource "aws_instance" "aws_ec2_instances" {
  instance_type = var.instance_type
  ami = var.aws_ami
  tags = {
    Name = var.instance_name
    env = var.env
  }
}