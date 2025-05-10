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

# resource "aws_key_pair" "tecgurus_key" {
#  key_name    = "key-tecgurus"
# }

resource "aws_instance" "tecgurus_ec2" {
  ami             = "ami-03f66a42faa59a9f1"
  instance_type   = "t3.large"
  key_name        = "testing-labs-001"
}