resource "aws_iam_user_policy" "github-cd-pipeline" {
  name = "${aws_iam_user.github-cd-pipeline.name}-policy"
  user = aws_iam_user.github-cd-pipeline.name
  policy = data.aws_iam_policy_document.github-cd-pipeline.json
}

data "aws_iam_policy_document" "github-cd-pipeline" {
  statement {
    actions = [
      "cloudformation:*",
      "lambda:*",
      "apigateway:*",
      "iam:*",
      "s3:*",
      "arn:aws:s3:::${var.name}",
      "arn:aws:s3:::${var.name}/*"
    ]
    resources = [
      "arn:aws:iam::*:role/${var.name}-${var.environment}-*",
      "arn:aws:lambda:${var.aws_region}:*:function:${var.name}-${var.environment}-*",
      "arn:aws:apigateway:${var.aws_region}::/restapis",
      "arn:aws:apigateway:${var.aws_region}::/restapis/*",
      "arn:aws:cloudformation:${var.aws_region}:*:stack/${var.name}-${var.environment}/*",
      "arn:aws:cloudformation:${var.aws_region}:aws:transform/Serverless-2016-10-31",
    ]
  }
}
