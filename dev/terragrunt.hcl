# dev/terragrunt.hcl

include "root"{
  #path = find_in_parent_folders("common.hcl")  ---> Tambien se puede personalizar la ruta de esta manera
   path = find_in_parent_folders()
}

terraform {
  source = "./modules/instance"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  profile        = "840021737375_pragma-ps-cloudops-services"
  region         = "us-east-1"
  instance_type  = "t2.micro"
  ami            = "ami-03a6f22038fbd8f98"
}

