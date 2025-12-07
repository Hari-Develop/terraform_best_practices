instance = {
    ec2 = {
        instance_type = "t3.micro"
        region = "us-east-1"
    }
}

route53 = {
    record = {
        type = "A" # route53 record type
        ttl = "300"
        zone_id  = data.aws_route53_zone.main.zone_id
        name     = "${module.ec2_instances.name}.dotdomain.online"
        records  = [each.value.instance_private_id]
    }
}