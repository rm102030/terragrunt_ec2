# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket         = "pragmalabstatebucket2024"
    dynamodb_table = "pragmalabstatebucket2024"
    encrypt        = true
    key            = "./terraform.tfstate"
    region         = "us-east-1"
  }
}