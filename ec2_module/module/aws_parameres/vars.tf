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
  description = "Record FQDN for the SSM parameter"
  type = object({
    fqdn = string
  })
}
variable "env" {
    type = string
}

variable "tags" {
    type = map(string)
    default = {}
}
