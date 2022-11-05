resource "aws_security_group" "test-web" {
  name        = "${var.name}-sg"
  description = "Security Group for Web Server"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = var.from_port_tcp1
    to_port     = var.to_port_tcp1
    protocol    = var.protocol
    cidr_blocks = var.cidr_block
  }

  ingress {
    from_port   = var.from_port_tcp2
    to_port     = var.to_port_tcp2
    protocol    = var.protocol
    cidr_blocks = var.cidr_block
  }

  egress {
    from_port   = var.from_port_tcp3
    to_port     = var.to_port_tcp3
    protocol    = "-1"
    cidr_blocks = var.cidr_block
  }

  tags = {
    Name = "test-web"
  }
}