data "dns_srv_record_set" "srv_record_set_lookup" {
  for_each = var.srv_record_set_lookup

  service = each.value.service
}

