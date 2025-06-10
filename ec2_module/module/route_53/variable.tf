variable "zone_id" {
  type = string
}
variable "instances" {
  type = map(string)
}
variable "records" {
  type = list(string)
}

variable "domain" {
  type = string
}

variable "name" {
  type = string
}