vpc_cidr_block   = "10.0.0.0/16"
subnet_cidr      = "10.0.0.0/24"
name             = "asg"
instance_type    = "t2.micro"
az               = "us-east-1a"
desired_capacity = 1
min_size         = 1
max_size         = 3
aws_access_key   = ""
aws_secret_key   = ""
region           = "us-east-1"
from_port_tcp1   = 80
to_port_tcp1     = 80
from_port_tcp2   = 22
to_port_tcp2     = 22
from_port_tcp3   = 0
to_port_tcp3     = 0
protocol         = "tcp"
cidr_block       = ["0.0.0.0/0"]
key_name         = "test"
ami_name         = "ami-packer"
