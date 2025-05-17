output "snapshot_name" {
    value = aws_ebs_snapshot.snapshot.tags["Name"]
}
