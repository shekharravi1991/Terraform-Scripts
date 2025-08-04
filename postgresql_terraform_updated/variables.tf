
variable "resource_group_name" {
  type    = string
  default = "rg-postgres-flex"
}

variable "location" {
  type    = string
  default = "eastus"
}

variable "postgres_server_name" {
  type    = string
  default = "pg-flex-demo"
}

variable "postgres_version" {
  type    = string
  default = "14"
}

variable "administrator_login" {
  type    = string
  default = "pgadmin"
}

variable "administrator_password" {
  type      = string
  default   = "ChangeMe@123"
  sensitive = true
}

variable "sku_name" {
  type    = string
  default = "B_Standard_B1ms"
}

variable "storage_mb" {
  type    = number
  default = 32768
}

variable "db_name" {
  type    = string
  default = "myappdb"
}
