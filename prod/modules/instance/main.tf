# prod/modules/instance/main.tf

variable "region" {}
variable "profile" {}

provider "aws" {
  region  = var.region
  profile = var.profile
}

variable "ami" {}
variable "instance_type" {}
variable "instance_count" {}


resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = var.instance_count


  tags = {
    #Name = var.instance_name
    Name = "${var.instance_name[count.index]}${count.index + 1}"
  }
}

