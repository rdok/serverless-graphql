provider "aws" {
  version = "~> 3.0"
  region = var.aws_region
}

terraform {
  required_version = ">= 0.13, < 0.14"
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "reliable"
    workspaces {
      prefix = "aws-sam-graphql-template-"
    }
  }
}

resource "aws_s3_bucket" "deployments" {
  bucket = var.name
  tags = {
    Name = var.name
    Environment = var.environment
  }
}

resource "aws_iam_user" "github-cd-pipeline" {
  name = "${var.name}-CDPipelineForGithub"
  tags = {
    Name = var.name
    Environment = var.environment
  }
}
