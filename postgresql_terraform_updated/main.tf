
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_postgresql_flexible_server" "postgres" {
  name                         = var.postgres_server_name
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = var.location
  version                      = var.postgres_version
  administrator_login          = var.administrator_login
  administrator_password       = var.administrator_password
  zone                         = "1"
  storage_mb                   = var.storage_mb
  sku_name                     = var.sku_name
  backup_retention_days        = 7
  auto_grow_enabled            = false
  geo_redundant_backup_enabled = false

  authentication {
    active_directory_auth_enabled = false
    password_auth_enabled         = true
  }
}

resource "azurerm_postgresql_flexible_server_database" "pgdb" {
  name      = var.db_name
  server_id = azurerm_postgresql_flexible_server.postgres.id
  charset   = "UTF8"
  collation = "C"
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "allow_all" {
  name             = "AllowAllIPs"
  server_id        = azurerm_postgresql_flexible_server.postgres.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "255.255.255.255"
}
