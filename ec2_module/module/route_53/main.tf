resource "aws_route53_record" "route_53" {
    zone_id = var.zone_id
    name    = "${var.instances}.unlockkey.online"
    type    = "A"
    ttl     = 30
    records = [output.name.aws_ec2_instances.private_ip]
}