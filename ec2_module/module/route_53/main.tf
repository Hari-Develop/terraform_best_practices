resource "aws_route53_record" "route_53" {
    zone_id = var.zone_id
    name    = var.name
    type    = "A"
    ttl     = 30
    records = var.records
}