#AWSTemplateFormatVersion: 2023-01-31
#Description: Create a Wordpress site with Terraform

provider "aws" {
access_key = "your_acces_key"
secret_key = "your_secret_key"
region = "your_desired_region"
}

resource "aws_instance" "web" {
    #count = 5
ami = "ami-095413544ce52437d"
instance_type = "t2.micro"
user_data = <<-EOF
#!/bin/bash
sudo apt-get update
sudo apt-get install nginx -y
sudo service nginx start
EOF

tags = {
        name= "Nginx Server"
        }
}