variable "storage_account_details" {
  # description = "Details of the resource groups"
  # type = map(object({
  #   storage_account_name           = string
  #   resource_group_name       = string
  #   location                  = string
  #   storage_account_account_tier   = string
  #   storage_account_replication_type = string
  #   storage_account_kind           = string
  #   storage_access_tier            = string
  #   https_traffic_only_enabled = string
  # }))
}
variable "tag_name" {
  description = "Resource name for the storage account"
  type        = string
}
variable "application_name" {
  description = "Application name for tagging"
  type        = string
}
variable "datecreated" {
  description = "Date of creation for tagging"
  type        = string
}
variable "environ" {
  description = "Environment for tagging (e.g., Production, Development)"
  type        = string
}
variable "storage_tags" {
  description = "Additional tags for the resources"
  type        = map(string)
  default     = {}
}