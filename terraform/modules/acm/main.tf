# ACM Certificate Module
# Create SSL/TLS certificate for the main domain and wildcard

resource "aws_acm_certificate" "this" {
  domain_name               = var.domain_name
  validation_method         = var.validation_method
  subject_alternative_names = var.subject_alternative_names

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name        = "acm-${var.domain_name}"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

# If you want Terraform to handle DNS validation (only when using Route53),
# you can add aws_route53_record resources here.
