
resource_group_name    = "rg-postgres-flex"
location               = "eastus"
postgres_server_name   = "pg-flex-demo"
postgres_version       = "14"
administrator_login    = "pgadmin"
administrator_password = "ChangeMe@123"
sku_name               = "B_Standard_B1ms"
storage_mb             = 32768
db_name                = "myappdb"
