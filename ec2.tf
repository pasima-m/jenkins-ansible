provider "aws" {
      region = "eu-west-2"
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  security_groups = ["jkSG"]    
  instance_type = "t2.micro"
  key_name      =  "delete"
  tags = {
    Name = "tomcat"
    Enviroment = "dev    
  }
}

