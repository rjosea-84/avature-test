output "ec2_ids" {
  description = "The IDs of the instance"
  value = { for k, m in module.ec2_instance : k => m.id }
}

output "ec2_arns" {
  description = "The ARN of the instance"
  value = { for k, m in module.ec2_instance : k => m.arn }
}

output "ec2_private_ips" {
  description = "The private IP address assigned to the instance"
  value = { for k, m in module.ec2_instance : k => m.private_ip }
}