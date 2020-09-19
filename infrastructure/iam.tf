resource "aws_iam_user_policy" "github-cd-pipeline" {
  name = "${aws_iam_user.github-cd-pipeline.name}-policy"
  user = aws_iam_user.github-cd-pipeline.name
  policy = data.aws_iam_policy_document.github-cd-pipeline.json
}

data "aws_iam_policy_document" "github-cd-pipeline" {
  statement {
    actions = [
      "cloudformation:CreateChangeSet",
      "cloudformation:DescribeChangeSet",
      "cloudformation:ExecuteChangeSet",
      "cloudformation:DeleteChangeSet",
      "cloudformation:ListChangeSets",
      "cloudformation:DescribeStackEvents",
      "cloudformation:DescribeStacks",
      "cloudformation:GetTemplateSummary"
    ]
    resources = [
      "arn:aws:cloudformation:${var.aws_region}:*:stack/${var.name}-${var.environment}/*",
      "arn:aws:cloudformation:${var.aws_region}:aws:transform/Serverless-2016-10-31",
    ]
  }

  statement {
    actions = [
      "s3:PutObject",
      "s3:GetObject",
      "s3:DeleteObject"]
    resources = [
      "arn:aws:s3:::${var.name}",
      "arn:aws:s3:::${var.name}/*"]
  }

  statement {
    actions = [
      "iam:GetRole",
      "iam:CreateRole",
      "iam:AttachRolePolicy",
      "iam:DetachRolePolicy",
      "iam:DeleteRole",
      "iam:PassRole",
    ]
    resources = [
      "arn:aws:iam::*:role/${var.name}-${var.environment}-*"]
  }

  statement {
    actions = [
      "lambda:CreateFunction",
      "lambda:DeleteFunction",
      "lambda:GetFunctionConfiguration",
      "lambda:GetFunction",
      "lambda:AddPermission",
      "lambda:RemovePermission",
    ]
    resources = [
      "arn:aws:lambda:${var.aws_region}:*:function:${var.name}-${var.environment}-*",
    ]
  }
  statement {

    actions = [
      "apigateway:GET",
      "apigateway:POST",
      "apigateway:DELETE",
      "apigateway:PATCH",
    ]
    resources = [
      "arn:aws:apigateway:${var.aws_region}::/restapis",
      "arn:aws:apigateway:${var.aws_region}::/restapis/*",
    ]
  }
}
