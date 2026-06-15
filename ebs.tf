data "aws_instance" "ebs" {
  for_each   = var.ebs_volumes
  instance_id = module.ec2_instance[each.key].id
}

resource "aws_ebs_volume" "ebs_volume" {
  for_each = var.ebs_volumes

  availability_zone = data.aws_instance.ebs[each.key].availability_zone
  size              = each.value.size
  type              = each.value.type
  
  tags = {
    Name = each.value.name
  }
  encrypted         = true
}

resource "aws_volume_attachment" "ebs_attach" {
  for_each = var.ebs_volumes

  device_name = each.value.device_name
  volume_id   = aws_ebs_volume.ebs_volume[each.key].id
  instance_id = module.ec2_instance[each.key].id
}
