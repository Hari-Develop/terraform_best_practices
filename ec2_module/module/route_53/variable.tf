variable "zone_id" {
  type = string
}
variable "instances" {
  type = string
}
variable "records" {
  type = list(string)
}

variable "domain" {
  type = string
}