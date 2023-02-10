terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
  required_version = ">=1.0.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.9.0"
    }
  }
}

provider "aws" {
  region                   = "eu-west-1"
  shared_credentials_files = ["<path to your credentials file>"]
  profile                  = "<profile-name>"
}