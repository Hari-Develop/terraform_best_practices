data "aws_instance" "instance_id" {
    filter {
        name = "tag:Name"
        values = "workstation"
    }
}

