module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  for_each = var.ec2_instances

  name          = each.key
  ami           = each.value.ami
  instance_type = each.value.instance_type
  key_name      = each.value.key_name
  subnet_id     = each.value.subnet_id

  tags = {
    resource    = each.value.resource
    environment = each.value.environment
    owner       = each.value.owner
    slug        = lower(join("_", [each.value.environment, var.team, each.key]))
  }
}