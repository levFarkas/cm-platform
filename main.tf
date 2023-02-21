terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-1"
}

module "car-model-classifier" {
  source = "git@github.com:levFarkas/car-model-classification.git?ref=development"
}
