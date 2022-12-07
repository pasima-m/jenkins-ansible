provider "aws" {
  region = "eu-west-2"
}
resource "aws_instance" "web" {
  ami           = "ami-03542b5588cd0e6b3"
  security_groups = ["jkSG"]
  instance_type = "t2.micro"
  key_name      =  "delete"

  tags = {
    Name = "Tomcat"
    Enviroment = dev
  }
}

