variable "domain_name" {
  description = "Primary domain name for the ACM certificate"
  type        = string
}

variable "subject_alternative_names" {
  description = "List of SANs (subdomains) to include in the certificate, e.g. ['*.example.com']"
  type        = list(string)
  default     = []
}

variable "validation_method" {
  description = "Validation method for the certificate: DNS or EMAIL"
  type        = string
  default     = "DNS"
}

variable "environment" {
  description = "Deployment environment name (e.g., dev, staging, prod)"
  type        = string
  default     = "dev"
}
