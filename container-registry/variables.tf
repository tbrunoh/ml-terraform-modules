variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy the resources"
  type        = string
  default     = "East US"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

variable "sku" {
  description = "The SKU of the Azure Container Registry (Basic, Standard, Premium)"
  type        = string
  default     = "Standard"
}

variable "rg_name" {
  description = "rg name"
  type        = string
}
variable "rg_location" {
  description = "rg name"
  type        = string
}