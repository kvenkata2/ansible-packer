variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  default = "10.0.0.0/24"
}

variable "name" {
  default = "asg"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "az" {
  default = "us-east-1a"
}

variable "desired_capacity" {
  default = 1
}

variable "min_size" {
  default = 1
}

variable "max_size" {
  default = 3
}

variable "aws_access_key" {
  default = ""
}

variable "aws_secret_key" {
  default = ""
}

variable "region" {
  default = "us-east-1"
}

variable "from_port_tcp1" {
  default = 80
}

variable "to_port_tcp1" {
  default = 80
}

variable "from_port_tcp2" {
  default = 22
}

variable "to_port_tcp2" {
  default = 22
}

variable "from_port_tcp3" {
  default = 0
}

variable "to_port_tcp3" {
  default = 0
}

variable "protocol" {
  default = "tcp"
}

variable "cidr_block" {
  default = ["0.0.0.0/0"]
}

variable "key_name" {
  default = "tes"
}

variable "ami_name" {
  default = "ami-packer"
}
