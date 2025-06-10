variable "aws_ami" {
  type = string
}
variable "instance_type" {
  type = string
}

variable "env" {
  type = string
}

variable "tags" {
  type = map(string)
}