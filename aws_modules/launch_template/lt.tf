resource "aws_launch_template" "alt" {
  name_prefix   = "${var.name}-lt"
  image_id      = data.aws_ami.ami.id
  instance_type = var.instance_type
  key_name      = var.key_name
}