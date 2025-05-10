# definicion de version para TERRAFORM
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


# definicion de provider: AWS 
# provider "name" { ... }
provider "aws" {
  region = "mx-central-1"
}



# definicion del modulo
# resource "module" "name_rsc" { ... }
#
resource "aws_instance" "tecgurus_ec2" {
  ami             = ""
  instance_type   = ""
  key_name        = ""
}