variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "ml-dev-gpu-rg"
}

variable "location" {
  description = "Azure region to deploy resources"
  type        = string
  default     = "centralus"
}
variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
}

variable "storage_account_tier" {
  description = "The tier of the storage account."
  type        = string
  default     = "Standard"
}

variable "storage_account_replication_type" {
  description = "The replication type of the storage account."
  type        = string
  default     = "LRS"
}
