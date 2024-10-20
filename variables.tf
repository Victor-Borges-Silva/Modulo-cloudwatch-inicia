#aws_cloudwatch_event_rule
variable "cloudwatch_inicia_name" {
  type    = string
  default = "Default_Variabletf"
}

variable "agendamento_cron" {
  type    = string
  default = "Horario de agendamento da cron"
}

variable "estado" {
  type    = string
  default = "Estado do recurso, habilitado ou desabilitado"
}

variable "cloudwatch_inicio_description" {
  type    = string
  default = "Default_Variabletf"
}

variable "evento_cloudwatch" {
  type    = string
  default = "Default_Variabletf"
}

#aws_cloudwatch_event_target
variable "nome_alvo" {
  type        = string
  description = "O ARN da função Lambda"
}

variable "lambda_function_arn_inicia" {
  type        = string
  description = "O ARN da função Lambda"
}

#aws_lambda_permission
variable "statement_id" {
  type    = string
  default = "Default_Variabletf"
}

variable "lambda_function_name_inicia" {
  type        = string
  description = "O nome da função Lambda"
}

#variable "aws_region_inicia" {
#  type    = string
#  default = "us-west-1"
#}




