
variable "pg_server_name" {
  description = "Name of the PostgreSQL server"
  type        = string
  default     = "mldatalabeldb"
}

variable "pg_admin_username" {
  description = "Admin username for PostgreSQL"
  type        = string
  default     = "mladmin"
}

variable "pg_admin_password" {
  description = "Admin password for PostgreSQL"
  type        = string
  sensitive   = true
  default     = "4VVW1P6sriEK"
}

variable "pg_sku" {
  description = "The SKU (pricing tier) for PostgreSQL"
  type        = string
  default     = "B_Standard_B2s"
}

variable "pg_version" {
  description = "PostgreSQL version"
  type        = string
  default     = "15"
}

variable "database_name" {
  description = "Name of the PostgreSQL database"
  type        = string
  default     = "ml_label_studio_dev"
}

variable "public_access_start_ip" {
  description = "Start IP for public access (0.0.0.0 allows all)"
  type        = string
  default     = "0.0.0.0"
}

variable "public_access_end_ip" {
  description = "End IP for public access (255.255.255.255 allows all)"
  type        = string
  default     = "255.255.255.255"
}


variable "rg_name" {
  description = "rg name"
  type        = string
}
variable "rg_location" {
  description = "rg name"
  type        = string
}

variable "storage_mb" {
  description = "storage_mb"
  type        = number
  default     = 32768
}
