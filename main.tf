resource "aws_cloudwatch_event_rule" "IniciaEC2" {
  name                = var.cloudwatch_inicia_name
  schedule_expression = "cron(0 8 ? * MON-FRI *)"
  state               = "ENABLED"
  description         = var.cloudwatch_inicio_description
  event_bus_name      = "default"
}

#Define que a função Lambda é o alvo da regra do EventBridge.
resource "aws_cloudwatch_event_target" "IniciaEC2_target" {
  rule      = aws_cloudwatch_event_rule.IniciaEC2.name
  target_id = "Funcao_Lambda_IniciaEC2"
  #arn       = "arn:aws:lambda:${var.aws_region_inicia}:${data.aws_caller_identity.current.account_id}:function:IniciaEC2"
  arn = var.lambda_function_arn_inicia
}

#Permite que o EventBridge invoque a função Lambda.
resource "aws_lambda_permission" "permite_EventBridge_executar_lambda" {
  statement_id = var.statement_id
  action       = "lambda:InvokeFunction"
  #function_name = aws_lambda_function.IniciaEC2.function_name
  function_name = var.lambda_function_name_inicia
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.IniciaEC2.arn
}

# Variáveis usadas para obter o ID da conta AWS e a região
data "aws_caller_identity" "current" {}
