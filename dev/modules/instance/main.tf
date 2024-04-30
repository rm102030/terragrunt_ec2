# dev/modules/instance/main.tf

variable "region" {}
variable "profile" {}

provider "aws" {
  region = var.region
  profile = var.profile 
}

variable "ami" {}
variable "instance_type" {}

resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
}

