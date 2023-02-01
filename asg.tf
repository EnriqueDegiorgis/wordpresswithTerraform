resource "aws_autoscaling_group" "web-server" {
  name                      = "nginx-asg"
  max_size                  = 2
  min_size                  = 2
  desired_capacity          = 2
  force_delete              = true
  launch_configuration      = aws_launch_configuration.vpc_default.name
  vpc_zone_identifier       = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]
  tag {
    key                 = "Name"
    value               = "Nginx-web-server-asg"
    propagate_at_launch = true
  }
}

resource "aws_launch_configuration" "web-server-launch-config" {
    name          = "web_config"
    image_id      = "ami-095413544ce52437d"
    instance_type = "t2.micro"
    user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update
    sudo apt-get install nginx -y
    sudo service nginx start
    EOF

}