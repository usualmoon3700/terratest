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
  region  = "ap-northeast-1"
}

resource "aws_s3_bucket" "b" {
  bucket = "usualmoon3700-terratest"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}