variable "image_id" {
  type = string
}


provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "devops_instance" {

  ami           = var.image_id
  instance_type = "t3.micro"
  security_groups = ["ssh-22-only"]
  key_name = "my-ssh-key"  

  tags = {
    Name = "hello_instance"
  }
}