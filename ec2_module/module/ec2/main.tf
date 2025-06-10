resource "aws_instance" "aws_ec2_instances" {
  instance_type = var.instance_type
  ami = var.aws_ami
}