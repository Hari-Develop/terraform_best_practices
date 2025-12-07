data "aws_ami" "redhat" {
  owners      = ["973714476881"]
  most_recent = true
  filter {
    name   = "name"
    values = ["RHEL-9*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}


data "aws_route53_zone" "main" {
  name         = "dotdomain.online"
  private_zone = false
}