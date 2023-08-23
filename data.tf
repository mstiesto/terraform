data "aws_route53_zone" "zones" {
  for_each = {for value in local.hosted_zones: value => value }  
  name     = each.value
}