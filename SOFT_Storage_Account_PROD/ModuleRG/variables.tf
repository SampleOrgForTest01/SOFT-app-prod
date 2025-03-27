variable "rgdetails" {
  description = "Details of the resource groups"
  type = map(object({
    name = string
    // default     = "hps-dev-infra-rg"
    location = string
    // default     = "central india"
  }))
}

variable "environ" {
  description = "The environment for the resource group"
  type        = string
}

variable "application_name" {
  description = "The name of the application"
  type        = string
}

variable "tag_name" {
  description = "The name of the resource"
  type        = string
}

variable "datecreated" {
  description = "The date the resource was created"
  type        = string
}

variable "rg_tags" {
  description = "A map of additional tags to assign to the resource group"
  type        = map(string)
  default     = {}
}