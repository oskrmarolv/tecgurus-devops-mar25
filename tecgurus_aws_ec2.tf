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
  ami             = "ami-08252046d3814a994"
  instance_type   = "t3.large"
  key_name        = "testing-labs-001"

  tags = {
    Name        = "tecgurus-stage-app"
    Environment = "staging"
  }
}

output "public_ip" {
  value       = aws_instance.tecgurus_ec2.public_ip
  description = "IP publica de la instancia"
}
