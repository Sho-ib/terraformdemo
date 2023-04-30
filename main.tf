terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
  required_version = ">= 1.1.0"

  cloud {
    organization = "Shoaibterraformdemo"

    workspaces {
      name = "Shoaibterraformdemo"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}
resource "aws_s3_bucket" "example" {
  bucket = "shoaibterraformdemo"
  acl    = "private"
}
