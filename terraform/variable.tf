variable "config_file_path" {
  type = string
  description = "User path to user/.aws config file"
}

variable "creds_file_path" {
  type = string
  description = "User path to user/.aws creds file"
}

variable "MyFirstLambda_code_zip" {
  type = string
  description = "Path to the zip file for the code to upload to s3"
}

variable "MyFirstLambda_env_var_SuperSecretEnvVar" {
  type = string
  description = "An env. variable to pass into the lambda"
}