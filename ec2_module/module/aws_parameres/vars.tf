variable "name" {
    type = string
}
variable "description" {
    type = string
}

variable "type" {
    type = string
}

variable "value" {
    type = string
}
variable "env" {
    type = string
}

variable "tags" {
    type = map(string)
    default = {}
}
