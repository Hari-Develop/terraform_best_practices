variable "ami_id" {
    type = string
    description = "The AMI ID to launch the EC2 instance"
}
variable "instances" {
    type = map(string)
}