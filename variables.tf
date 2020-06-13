variable "route53_record_count" {
    type        = bool
    description = "route53 record count."
}

variable "route53_record_depends_on" {
    type        = list(string)
    description = "route53 record depends on."
}

variable "route53_record_zone_id" {
    type        = string
    description = "route53 record zone id."
}

variable "route53_record_name" {
    type        = string
    description = "route53 record name."
}

variable "route53_record_type" {
    type        = string
    description = "route53 record type."
}

variable "route53_record_alias_name" {
    type        = string
    description = "route53 record alias name."
}

variable "route53_record_alias_evaluate_target_health" {
    type        = string
    description = "route53 record alias evaluate target health."
}

variable "extra_tags" {
    type        = map(string)
    description = "extra tags."
}