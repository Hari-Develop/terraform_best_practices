variable "aws_ami" {
  type = string
}
variable "instances" {
  type = map(string)
}

variable "env" {
  type = string
}