output "identity_api_keys_id" {
  description = "Map of id values across all identity_api_keys, keyed the same as var.identity_api_keys except keys with no id are omitted"
  value       = { for k, v in oci_identity_api_key.identity_api_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_api_keys_fingerprint" {
  description = "Map of fingerprint values across all identity_api_keys, keyed the same as var.identity_api_keys except keys with no fingerprint are omitted"
  value       = { for k, v in oci_identity_api_key.identity_api_keys : k => v.fingerprint if v.fingerprint != null && length(v.fingerprint) > 0 }
}
output "identity_api_keys_inactive_status" {
  description = "Map of inactive_status values across all identity_api_keys, keyed the same as var.identity_api_keys except keys with no inactive_status are omitted"
  value       = { for k, v in oci_identity_api_key.identity_api_keys : k => v.inactive_status if v.inactive_status != null && length(v.inactive_status) > 0 }
}
output "identity_api_keys_key_value" {
  description = "Map of key_value values across all identity_api_keys, keyed the same as var.identity_api_keys except keys with no key_value are omitted"
  value       = { for k, v in oci_identity_api_key.identity_api_keys : k => v.key_value if v.key_value != null && length(v.key_value) > 0 }
}
output "identity_api_keys_state" {
  description = "Map of state values across all identity_api_keys, keyed the same as var.identity_api_keys except keys with no state are omitted"
  value       = { for k, v in oci_identity_api_key.identity_api_keys : k => v.state if v.state != null && length(v.state) > 0 }
}
output "identity_api_keys_time_created" {
  description = "Map of time_created values across all identity_api_keys, keyed the same as var.identity_api_keys except keys with no time_created are omitted"
  value       = { for k, v in oci_identity_api_key.identity_api_keys : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "identity_api_keys_user_id" {
  description = "Map of user_id values across all identity_api_keys, keyed the same as var.identity_api_keys except keys with no user_id are omitted"
  value       = { for k, v in oci_identity_api_key.identity_api_keys : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

