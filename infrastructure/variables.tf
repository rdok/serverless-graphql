variable "aws_region" {
  default = "eu-west-1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "name" {
  default = "aws-sam-graphql"
  type        = string
}
