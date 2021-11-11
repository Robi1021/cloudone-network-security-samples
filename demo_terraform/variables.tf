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