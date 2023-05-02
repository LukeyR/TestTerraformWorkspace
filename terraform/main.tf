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
  shared_config_files      = [var.config_file_path]
  shared_credentials_files = [var.creds_file_path]
  region                   = "eu-west-2"
}
