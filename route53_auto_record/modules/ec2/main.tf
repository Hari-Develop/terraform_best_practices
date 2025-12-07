resource "aws_ec2" "main"{
    instance_type = var.instance_type
    ami = var.ami
    region = var.region
}