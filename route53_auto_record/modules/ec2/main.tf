resource "aws_instance" "main"{
    instance_type = var.instance_type
    ami = var.ami
    region = var.region
}
