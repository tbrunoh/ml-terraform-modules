
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