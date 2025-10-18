terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }

  backend "s3" {
    bucket = "foreach-s3-morrisons"
    key    = "foreach1-remotestate"
    region = "us-east-1"
    dynamodb_table = "foreach-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}