output "srv_record_set_lookup_id" {
  description = "Map of id values across all srv_record_set_lookup, keyed the same as var.srv_record_set_lookup"
  value       = { for k, v in data.dns_srv_record_set.srv_record_set_lookup : k => v.id }
}
output "srv_record_set_lookup_service" {
  description = "Map of service values across all srv_record_set_lookup, keyed the same as var.srv_record_set_lookup"
  value       = { for k, v in data.dns_srv_record_set.srv_record_set_lookup : k => v.service }
}
output "srv_record_set_lookup_srv" {
  description = "Map of srv values across all srv_record_set_lookup, keyed the same as var.srv_record_set_lookup"
  value       = { for k, v in data.dns_srv_record_set.srv_record_set_lookup : k => v.srv }
}

