variable "identity_api_keys" {
  description = <<EOT
Map of identity_api_keys, attributes below
Required:
    - key_value
    - user_id
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    key_value = string
    user_id   = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

