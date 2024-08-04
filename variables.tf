variable "cloudwatch_inicia_name" {
  type    = string
  default = "Default_Variabletf"
}

variable "cloudwatch_inicio_description" {
  type    = string
  default = "Default_Variabletf"
}

variable "statement_id" {
  type    = string
  default = "Default_Variabletf"
}

variable "aws_region_inicia" {
  type    = string
  default = "us-west-1"
}

variable "lambda_function_arn_inicia" {
  type        = string
  description = "O ARN da função Lambda"
}

variable "lambda_function_name_inicia" {
  type        = string
  description = "O nome da função Lambda"
}
