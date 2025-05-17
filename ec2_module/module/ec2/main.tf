resource "aws_instance" "ec2" {
    instance_type = var.instance_type
    ami = var.ami_id
    tags = {
        Name = var.instance_name
    }
}