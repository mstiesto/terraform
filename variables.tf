variable "dns_records" {
  description = "List of DNS records"
  type        = list(object({
    name    = string
    type    = string
    zone_id = string
    ttl     = number
    records = list(string)
  }))
}