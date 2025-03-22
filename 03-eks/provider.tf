terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.83.0"
    }
  }

  backend "s3" {
    bucket = "bhargav-bucket-dev"
    key    = "eks"
    region = "us-east-1"
    dynamodb_table = "bhargav-locking-dev"
  }

}

provider "aws" {
    region = "us-east-1"
}