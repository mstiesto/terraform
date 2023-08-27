data "aws_route53_zone" "all_zones" {
  for_each = var.records
    name = each.key
}