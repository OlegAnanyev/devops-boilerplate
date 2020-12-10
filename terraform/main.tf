variable "region" {
  type = string
}
variable "image_id" {
  type = string
}
variable "key_name" {
  type = string
}
variable "instance_type" {
  type = string
}
variable "instance_name" {
  type = string
}
variable "security_groups" {
  type = set(string)
}


provider "aws" {
  region = var.region
}

resource "aws_instance" "devops_instance" {
  ami           = var.image_id
  instance_type = var.instance_type
  security_groups = var.security_groups
  key_name = var.key_name

  tags = {
    Name = var.instance_name
  }
}