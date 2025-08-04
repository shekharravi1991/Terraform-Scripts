variable "resource_group_name" {
  description = "Resource group for Logic App"
  type        = string
  default     = "logicapp-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

variable "logic_app_name" {
  description = "Name of the Logic App"
  type        = string
  default     = "demo-logicapp"
}