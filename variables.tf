variable "lambda_function_event_invoke_configs" {
  description = <<EOT
Map of lambda_function_event_invoke_configs, attributes below
Required:
    - function_name
Optional:
    - maximum_event_age_in_seconds
    - maximum_retry_attempts
    - qualifier
    - region
    - destination_config (block):
        - on_failure (optional, block):
            - destination (required)
        - on_success (optional, block):
            - destination (required)
EOT

  type = map(object({
    function_name                = string
    maximum_event_age_in_seconds = optional(number)
    maximum_retry_attempts       = optional(number)
    qualifier                    = optional(string)
    region                       = optional(string)
    destination_config = optional(object({
      on_failure = optional(object({
        destination = string
      }))
      on_success = optional(object({
        destination = string
      }))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.lambda_function_event_invoke_configs : (
        v.maximum_event_age_in_seconds == null || (v.maximum_event_age_in_seconds >= 60 && v.maximum_event_age_in_seconds <= 21600)
      )
    ])
    error_message = "must be between 60 and 21600"
  }
  validation {
    condition = alltrue([
      for k, v in var.lambda_function_event_invoke_configs : (
        v.maximum_retry_attempts == null || (v.maximum_retry_attempts >= 0 && v.maximum_retry_attempts <= 2)
      )
    ])
    error_message = "must be between 0 and 2"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

