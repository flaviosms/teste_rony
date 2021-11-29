variable "region_id" {
  default = "us-east-1"
}

variable "prefix" {
  default = "TTO"
  #Teste Terraform Onboard
}

variable "account" {
  default = 546048762108
}

# Prefix configuration and project common tags
locals {
  prefix = "${var.prefix}-${terraform.workspace}"
  common_tags = {
    Project      = "Datalake"
    ManagedBy    = "Terraform"
    Department   = "systems",
    Provider     = "A3DATA",
    Owner        = "Data Engineering"
    BusinessUnit = "Data"
    Billing      = "Infrastructure"
    Environment  = terraform.workspace
    UserEmail    = "flavio.serrano@a3data.com.br"
  }
}

variable "bucket_name" {
  description = "Create S3 bucket with this name"
  default="titanic"
}

variable "database_name" {
  description = "Create databases with these names"
  default="landing_zone"
}

variable "bucket_paths" {
  description = "Paths to S3 bucket used by the crawler"
  default = "s3://landing-zone-546048762108"
}

variable "bucket_functions" {
  description = "Create S3 bucket for lambda functions"
  default     = "temp-functions-rony"
}