resource "aws_route53_record" "dns_records" {
  count = length(var.dns_records)

  zone_id = var.dns_records[count.index].zone_id
  name    = var.dns_records[count.index].name
  type    = var.dns_records[count.index].type
  ttl     = var.dns_records[count.index].ttl
  records = var.dns_records[count.index].records
}