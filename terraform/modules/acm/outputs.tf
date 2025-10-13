output "acm_certificate_arn" {
  description = "ARN of the created ACM certificate"
  value       = aws_acm_certificate.this.arn
}

output "acm_domain_name" {
  description = "Primary domain name of the certificate"
  value       = aws_acm_certificate.this.domain_name
}
