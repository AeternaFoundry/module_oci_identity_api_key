resource "oci_identity_api_key" "identity_api_keys" {
  for_each = var.identity_api_keys

  key_value = each.value.key_value
  user_id   = each.value.user_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

