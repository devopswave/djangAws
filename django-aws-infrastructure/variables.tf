variable "region" {
  description = "The AWS region to create resources in."
  default     = "eu-west-3"
}

variable "project_name" {
  description = "Project name to use in resource names"
  default     = "django-aws"
}

variable "availability_zones" {
  description = "Availability zones"
  default     = ["eu-west-3a", "eu-west-3c"]
}

variable "ecs_prod_backend_retention_days" {
  description = "Retention period for backend logs"
  default     = 30
}

# rds

variable "prod_rds_db_name" {
  description = "RDS database name"
  default     = "django_aws"
}
variable "prod_rds_username" {
  description = "RDS database username"
  default     = "django_aws"
}
variable "prod_rds_password" {
  description = "postgres password for production DB"
}

variable "prod_rds_instance_class" {
  description = "RDS instance type"
  default     = "db.t3.micro"
}