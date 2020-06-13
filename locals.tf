locals {
  tags  = merge(
      map("key", "resource_name", "value", var.route53_record_alias_name),
      var.extra_tags
  )
}