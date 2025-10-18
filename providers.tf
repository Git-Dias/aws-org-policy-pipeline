terraform {
  required_version = ">= 1.6.0"

  backend "s3" {
    bucket         = "dias-state-tf"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}
