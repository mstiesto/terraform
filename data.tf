data "aws_route53_zone" "zones" {
  for_each = {for zone_name in var.zone_names: zone_name => zone_name }  
  name     = each.value
}