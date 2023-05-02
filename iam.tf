resource "aws_iam_policy" "MyFirstLambda" {
  name = local.MyFirstLambda
  policy = data.aws_iam_policy_document.MyFirstLambda.json
}

data "aws_iam_policy_document" "MyFirstLambda" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

# TODO
#  Add SES permissions