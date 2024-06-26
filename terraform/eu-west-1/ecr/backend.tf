provider "aws" {
  region = "eu-west-1"
}

terraform {
  required_version = ">= 0.11.14"

  backend "s3" {
    bucket         = "aniket-tfstate"
    key            = "eu-west-1/ecr/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "aniket-terraform-statelock"
  }
}

