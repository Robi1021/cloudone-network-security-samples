# variables.tf

variable "prefix" {
  description = "Prefix for resources"
  default     = "demo_terraform"
}
variable "location" {
  description = "Region to deploy resources"
  default     = "eastus"
}

/* variable "boot_diagnostics_sa_type" {
  description = "Storage account type for boot diagnostics"
  default     = "Standard_LRS"
} */

variable "demoenv" {
  description = "Demo Enviroment"
  default     = "Demo"
}

variable "demoenv" {
  description = "Demo Enviroment"
  default     = "Demo"
}

variable "sub_id" {
  description = "Subscription_ID"
  default     = "e0b488d0-e8ed-426d-bb22-5dcce490cca9"
}

variable "client_id" {
  description = "Client_ID"
  default     = "bf4ca2db-dc1c-485a-8f54-994d3c36ac27"
}

variable "client_secret" {
  description = "Client_Secret"
  default     = "g927Q~N1.6N_t8FDKzQ99L8gvfBKGfYGcIiIB"
}

variable "tenant_id" {
  description = "Tenant_ID"
  default     = "3e04753a-ae5b-42d4-a86d-d6f05460f9e4"
}

variable "admin_username" {
  description = "Admin Username Webserver"
  default     = "demoadmin"
}

variable "admin_password" {
  description = "Admin Password Webserver"
  default     = "CloudOne1234!" 
}