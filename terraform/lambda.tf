resource "aws_lambda_function" "MyFirstLambda" {
  function_name = local.MyFirstLambda
  role          = ""

  runtime = "python3.10"

  filename      = var.MyFirstLambda_code_zip
  handler = "main.lambda_handler"


  environment {
    variables = {
      SuperSecretEnvVar = var.MyFirstLambda_env_var_SuperSecretEnvVar
    }
  }
}

resource "aws_lambda_permission" "MyFirstLambda" {
  statement_id = "AllowExecutionOf${local.MyFirstLambda}FromEventBridge"
  action        = "lambda:InvokeFunction"
  function_name = local.MyFirstLambda
  # TODO finish EventBridge
  principal     = ""
}