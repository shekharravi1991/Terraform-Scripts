variable "role_definition_name" {
  description = "The name of a built-in role to assign (e.g., 'Contributor', 'Reader')"
  type        = string
}

variable "principal_id" {
  description = "The object ID of the user, group or service principal to assign the role to"
  type        = string
}