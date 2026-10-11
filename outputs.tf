output "srv_record_set_lookup_id" {
  description = "Map of id values across all srv_record_set_lookup, keyed the same as var.srv_record_set_lookup except keys with no id are omitted"
  value       = { for k, v in data.dns_srv_record_set.srv_record_set_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "srv_record_set_lookup_service" {
  description = "Map of service values across all srv_record_set_lookup, keyed the same as var.srv_record_set_lookup except keys with no service are omitted"
  value       = { for k, v in data.dns_srv_record_set.srv_record_set_lookup : k => v.service if v.service != null && length(v.service) > 0 }
}
output "srv_record_set_lookup_srv" {
  description = "Map of srv values across all srv_record_set_lookup, keyed the same as var.srv_record_set_lookup except keys with no srv are omitted"
  value       = { for k, v in data.dns_srv_record_set.srv_record_set_lookup : k => v.srv if v.srv != null && length(v.srv) > 0 }
}

