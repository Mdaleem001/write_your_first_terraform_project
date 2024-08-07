terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.18"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"  # Correcting the region format to avoid an error (availability zone should not be used here)
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}
