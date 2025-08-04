resource "azurerm_resource_group" "logicapp_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_template_deployment" "logicapp_deployment" {
  name                = "logicapp-deployment"
  resource_group_name = azurerm_resource_group.logicapp_rg.name
  deployment_mode     = "Incremental"

  template_body = file("${path.module}/logicapp-template.json")

  parameters = {
    logicAppName = jsonencode(var.logic_app_name)
    location     = jsonencode(var.location)
  }
}