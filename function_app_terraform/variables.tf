
variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "postgresql_server_name" {
  type        = string
  description = "PostgreSQL server name"
}

variable "admin_username" {
  type        = string
  description = "Admin username"
}

variable "admin_password" {
  type        = string
  description = "Admin password"
}

variable "postgresql_version" {
  type        = string
  description = "PostgreSQL version"
}

variable "sku_name" {
  type        = string
  description = "SKU name for the PostgreSQL server"
}

variable "storage_mb" {
  type        = number
  description = "Storage in MB"
}

variable "backup_retention_days" {
  type        = number
  description = "Backup retention in days"
}

variable "postgresql_database_name" {
  type        = string
  description = "PostgreSQL database name"
}

variable "subscription_id" {
  type        = string
  description = "Azure Subscription ID"
}

variable "tenant_id" {
  type        = string
  description = "Azure Tenant ID"
}
