output "lambda_function_event_invoke_configs_id" {
  description = "Map of id values across all lambda_function_event_invoke_configs, keyed the same as var.lambda_function_event_invoke_configs"
  value       = { for k, v in aws_lambda_function_event_invoke_config.lambda_function_event_invoke_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "lambda_function_event_invoke_configs_destination_config" {
  description = "Map of destination_config values across all lambda_function_event_invoke_configs, keyed the same as var.lambda_function_event_invoke_configs"
  value       = { for k, v in aws_lambda_function_event_invoke_config.lambda_function_event_invoke_configs : k => one(v.destination_config) if v.destination_config != null && length(v.destination_config) > 0 }
}
output "lambda_function_event_invoke_configs_function_name" {
  description = "Map of function_name values across all lambda_function_event_invoke_configs, keyed the same as var.lambda_function_event_invoke_configs"
  value       = { for k, v in aws_lambda_function_event_invoke_config.lambda_function_event_invoke_configs : k => v.function_name if v.function_name != null && length(v.function_name) > 0 }
}
output "lambda_function_event_invoke_configs_maximum_event_age_in_seconds" {
  description = "Map of maximum_event_age_in_seconds values across all lambda_function_event_invoke_configs, keyed the same as var.lambda_function_event_invoke_configs"
  value       = { for k, v in aws_lambda_function_event_invoke_config.lambda_function_event_invoke_configs : k => v.maximum_event_age_in_seconds if v.maximum_event_age_in_seconds != null }
}
output "lambda_function_event_invoke_configs_maximum_retry_attempts" {
  description = "Map of maximum_retry_attempts values across all lambda_function_event_invoke_configs, keyed the same as var.lambda_function_event_invoke_configs"
  value       = { for k, v in aws_lambda_function_event_invoke_config.lambda_function_event_invoke_configs : k => v.maximum_retry_attempts if v.maximum_retry_attempts != null }
}
output "lambda_function_event_invoke_configs_qualifier" {
  description = "Map of qualifier values across all lambda_function_event_invoke_configs, keyed the same as var.lambda_function_event_invoke_configs"
  value       = { for k, v in aws_lambda_function_event_invoke_config.lambda_function_event_invoke_configs : k => v.qualifier if v.qualifier != null && length(v.qualifier) > 0 }
}
output "lambda_function_event_invoke_configs_region" {
  description = "Map of region values across all lambda_function_event_invoke_configs, keyed the same as var.lambda_function_event_invoke_configs"
  value       = { for k, v in aws_lambda_function_event_invoke_config.lambda_function_event_invoke_configs : k => v.region if v.region != null && length(v.region) > 0 }
}

