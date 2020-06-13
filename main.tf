resource "null_resource" "depends_on" {
    triggers = {
        depends_on = join("", var.route53_record_depends_on)
    }
}

resource "aws_route53_record" "route53_record_terraform" {
    count                      = var.route53_record_count
    depends_on                 = [null_resource.depends_on]
    zone_id                    = var.route53_record_zone_id
    name                       = var.route53_record_name
    type                       = var.route53_record_type
    alias {
        name                   = var.route53_record_alias_name
        zone_id                = var.route53_record_alias_zone_id
        evaluate_target_health = var.route53_record_alias_evaluate_target_health
    }
    tags                       = local.tags
}