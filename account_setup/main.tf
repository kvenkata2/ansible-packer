module "vpc" {
  source         = "../aws_modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  subnet_cidr    = var.subnet_cidr
}

module "asg" {
  source           = "../aws_modules/asg"
  az               = var.az
  desired_capacity = var.desired_capacity
  min_size         = var.min_size
  max_size         = var.max_size
  lt_id            = module.lt.lt_id
}

module "sg" {
  source         = "../aws_modules/sg"
  name           = var.name
  vpc_id         = module.vpc.vpc_id
  from_port_tcp1 = var.from_port_tcp1
  to_port_tcp1   = var.to_port_tcp1
  from_port_tcp2 = var.from_port_tcp2
  to_port_tcp2   = var.to_port_tcp2
  from_port_tcp3 = var.from_port_tcp3
  to_port_tcp3   = var.to_port_tcp3
  protocol       = var.protocol
  cidr_block     = var.cidr_block
}

module "lt" {
  source        = "../aws_modules/launch_template"
  name          = var.name
  key_name      = var.key_name
  instance_type = var.instance_type
  ami_name      = var.ami_name
}

module "rt" {
  source    = "../aws_modules/rt&rta"
  vpc_id    = module.vpc.vpc_id
  subnet_id = module.vpc.subnet_id
  igw_id    = module.igw.igw_id
}

module "igw" {
  source = "../aws_modules/igw"
  vpc_id = module.vpc.vpc_id
}
