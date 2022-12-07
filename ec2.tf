terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.45.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "ec2-instance" {
  ami           = "ami-03542b5588cd0e6b3"
  instance_type = "t2.micro"
  tags = {
    Name = "Tomcat"
  }
}
