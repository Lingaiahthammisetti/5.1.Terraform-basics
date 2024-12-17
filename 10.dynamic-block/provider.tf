terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }

backend "s3" {
  bucket ="ec2-remote-state"
  key="create-ec2-key"
  region="us-east-1"
  dynamodb_table="ec2-remote-state-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  
}

