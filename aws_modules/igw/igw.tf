resource "aws_internet_gateway" "igw_tf" {
  vpc_id = var.vpc_id
}
