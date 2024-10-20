# Modulo-cloudwatch
Modulo-cloudwatch

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.56.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_event_rule.IniciaEC2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule) | resource |
| [aws_cloudwatch_event_target.IniciaEC2_target](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target) | resource |
| [aws_lambda_permission.permite_EventBridge_executar_lambda](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_permission) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_agendamento_cron"></a> [agendamento\_cron](#input\_agendamento\_cron) | n/a | `string` | `"Horario de agendamento da cron"` | no |
| <a name="input_cloudwatch_inicia_name"></a> [cloudwatch\_inicia\_name](#input\_cloudwatch\_inicia\_name) | aws\_cloudwatch\_event\_rule | `string` | `"Default_Variabletf"` | no |
| <a name="input_cloudwatch_inicio_description"></a> [cloudwatch\_inicio\_description](#input\_cloudwatch\_inicio\_description) | n/a | `string` | `"Default_Variabletf"` | no |
| <a name="input_estado"></a> [estado](#input\_estado) | n/a | `string` | `"Estado do recurso, habilitado ou desabilitado"` | no |
| <a name="input_evento_cloudwatch"></a> [evento\_cloudwatch](#input\_evento\_cloudwatch) | n/a | `string` | `"Default_Variabletf"` | no |
| <a name="input_lambda_function_arn_inicia"></a> [lambda\_function\_arn\_inicia](#input\_lambda\_function\_arn\_inicia) | O ARN da função Lambda | `string` | n/a | yes |
| <a name="input_lambda_function_name_inicia"></a> [lambda\_function\_name\_inicia](#input\_lambda\_function\_name\_inicia) | O nome da função Lambda | `string` | n/a | yes |
| <a name="input_nome_alvo"></a> [nome\_alvo](#input\_nome\_alvo) | O ARN da função Lambda | `string` | n/a | yes |
| <a name="input_statement_id"></a> [statement\_id](#input\_statement\_id) | aws\_lambda\_permission | `string` | `"Default_Variabletf"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->