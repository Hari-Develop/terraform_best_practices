# Call the module to create a snapshot of the root EBS volume
module "snapshot_root_volume" {
    source        = "./modules/snapshot"
    instance_id = data.aws_instance.instance_id.id
    volume_id     = data.aws_instance.instance_id.root_block_device[0].volume_id
    snapshot_name = "snapshot-of-${data.aws_instance.instance_id.id}-${timestamp()}"
    env = "Prod"
}