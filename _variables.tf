variable "aws_region" {
  type        = string
  description = "AWS region."
  default     = "us-east-1"
}

variable "team" {
  type        = string
  description = "Name of the team that owns the service."
  default     = ""
}

variable "security_groups" {
  type        = list(string)
  description = "List of security group IDs."
  default     = [""]
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet the resource will be created in."
  default     = ""
}

##### EC2 variables #####
variable "ec2_instances" {
  type = map(object({
    ami           = string
    instance_type = string
    key_name      = string
    subnet_id     = string
    resource      = string
    environment   = string
    owner         = string
  }))
}
##### ESB variables #####
variable "ebs_volumes" {
  description = "Map of EBS volume configurations keyed by instance/resource name."
  type = map(object({
    size        = number
    type        = string
    device_name = string
    name        = string
  }))
  default = {}
}


