data "aws_ami" "redhat" {
  owners = "RHEL-9-DevOps-Practice"
  most_recent = true
}