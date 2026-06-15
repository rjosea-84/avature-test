team        = "NLP"
aws_region  = "us-east-1"

# EC2 instance configuration. Edit values here to change instances.
ec2_instances = {
  "avature-service-1" = {
    ami           = "ami-q1w2e3r4t5y6r7l8z"
    instance_type = "t3a.medium"
    key_name      = "john.doe.qa"
    subnet_id     = "subnet-5df48d742d2674eab"
    resource      = "instance"
    environment   = "dev"
    owner         = "NLP"
  }
  "avature-service-2" = {
    ami           = "ami-a1v2a3t4u5r6e7rlz"
    instance_type = "m5.xlarge"
    key_name      = "jane.doe.qa"
    subnet_id     = "subnet-5df48d742d2674eab"
    resource      = "instance"
    environment   = "dev"
    owner         = "NLP"
  }
}

# EBS volume configuration per instance/resource. Edit values here to change volumes.
ebs_volumes = {
  "avature-service-2" = {
    size        = 200
    type        = "gp3"
    device_name = "/dev/xvdf"
    name        = "avature-service-2-data"
  }
}