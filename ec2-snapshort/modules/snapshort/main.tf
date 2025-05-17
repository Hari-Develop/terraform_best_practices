resource "aws_ebs_snapshot" "snapshot" {
    volume_id = var.volume_id

    tags = {
        Name = "snapshort-${var.env}-${timestamp()}"
    }
}