provider "aws" {
      region = "eu-west-2"
}

resource "aws_instance" "web" {
    ami           = "ami-03542b5588cd0e6b3"
    instance_type = "t2.micro"
    security_groups = ["jkSG"]
    key_name      =  "delete"
    tags = {
        Name = " tomcat"
        Environment = "dev"
  }
}

