resource "aws_route53_record" "cname_records" {
  for_each = var.records
    zone_id = data.aws_route53_zone.all_zones[each.key].zone_id
    name    = var.records[each.key].cname.url
    type    = "CNAME"
    ttl     = 300
    records = [var.records[each.key].cname.record]
}

resource "aws_route53_record" "mx_records" {
  for_each = var.records
    zone_id = data.aws_route53_zone.all_zones[each.key].zone_id
    name    = var.records[each.key].mx.url
    type    = "MX"
    ttl     = 300
    records = ["0 ${var.records[each.key].mx.record}"]
}

resource "aws_route53_record" "txt_records" {
  for_each = var.records
    zone_id = data.aws_route53_zone.all_zones[each.key].zone_id
    name    = var.records[each.key].txt.url
    type    = "TXT"
    ttl     = 300
    records = [var.records[each.key].txt.record]
}