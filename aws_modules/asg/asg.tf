resource "aws_autoscaling_group" "asg" {
  availability_zones = ["${var.az}"]
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size

  launch_template {
    id      = var.lt_id
    version = "$Latest"
  }
}