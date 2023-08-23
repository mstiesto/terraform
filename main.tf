resource "aws_route53_record" "mx_records" {
  for_each = { for zone_name in var.zone_names: zone_name => zone_name }
  
  name    = ""
  type    = "MX"
  ttl     = 120
  zone_id = data.aws_route53_zone.zones[each.key].zone_id
  records = var.mx_records[each.key]
}

resource "aws_route53_record" "txt_records" {
  for_each = { for zone_name in var.zone_names: zone_name => zone_name }

  name    = ""
  type    = "TXT"
  ttl     = 120
  zone_id = data.aws_route53_zone.zones[each.key].zone_id
  records = var.txt_records[each.key]
}