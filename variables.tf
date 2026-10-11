variable "srv_record_set_lookup" {
  description = <<EOT
Map of srv_record_set_lookup, attributes below
Required:
    - service
EOT

  type = map(object({
    service = string
  }))
}

