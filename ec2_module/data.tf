data "aws_ami" "ami_instance_id" {
    filter {
        name = "tag:Name"
        values = ["workstation"]
    }
    owners = ["099720109477"]
}