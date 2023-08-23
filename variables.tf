variable "zone_names" {
  description = "List of zone names"
  type        = list(string)
}

variable "mx_records" {
  description = "Map of MX records for each zone"
  type        = map(list(string))
}

variable "txt_records" {
  description = "Map of TXT records for each zone"
  type        = map(list(string))
}
