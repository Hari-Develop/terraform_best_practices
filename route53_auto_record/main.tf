module "ec2_instances" {
  source = "./modules/ec2"
  for_each = var.instance
  ami = data.aws_ami.redhat.id
  instance_type = each.value.instance_type
  region = each.value.region
}