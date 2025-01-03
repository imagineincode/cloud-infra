terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.82.2"
    }
  }

  backend "s3" {
    bucket         = "imagineincode-terraform-state"
    key            = "us-east-2/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
      Environment = "Prod"
      Name        = "imagineincode"
    }
  }
}

module "vpc" {
  source = "../../modules/vpc"

  cidr_block           = "10.0.0.0/16"
  vpc_name             = "imagineincode-us-east-2"
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  availability_zones   = ["us-east-2a", "us-east-2b"]
}
