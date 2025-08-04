
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_postgresql_flexible_server" "postgres" {
  name                   = var.postgresql_server_name
  location               = var.location
  resource_group_name    = azurerm_resource_group.rg.name
  administrator_login    = var.admin_username
  administrator_password = var.admin_password
  version                = var.postgresql_version
  sku_name               = var.sku_name
  storage_mb             = var.storage_mb
  backup_retention_days  = var.backup_retention_days
  zone                   = "1"

  authentication {
    password_auth_enabled = true
  }

  depends_on = [azurerm_resource_group.rg]
}

resource "azurerm_postgresql_flexible_server_database" "pgdb" {
  name      = var.postgresql_database_name
  server_id = azurerm_postgresql_flexible_server.postgres.id
  charset   = "UTF8"
  collation = "C"
}
