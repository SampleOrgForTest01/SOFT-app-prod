### Calling Resource Group Module here:

module "resource_group" {
  source           = "./ModuleRG"
  rgdetails        = var.rgdetails
  environ          = var.environ
  tag_name    = var.tag_name
  application_name = var.application_name
  rg_tags = var.rg_tags
  datecreated      = local.timestamp
}

# Calling Storage Account Module here:

module "storage_account" {
  source = "./ModuleStorage"
  storage_account_details = var.storage_account_details
  tag_name = var.tag_name
  application_name = var.application_name
  datecreated = var.datecreated
  environ = var.environ
  storage_tags = var.storage_tags
  depends_on = [ module.resource_group ]
}
