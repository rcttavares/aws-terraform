terraform {
  required_version = "1.2.2"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.18.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "user1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-123456123456"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Mangedby    = "Terraform"
  }
}
