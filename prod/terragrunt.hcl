# prod/terragrunt.hcl

terraform {
  source = "./modules/instance"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  profile        = "840021737375_pragma-ps-cloudops-services"
  region         = "us-east-1"
  instance_type  = "t2.large"
  ami            = "ami-03a6f22038fbd8f98"
  instance_count = 3  
}
