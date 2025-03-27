##################################
# STORAGE ACCOUNT MODULE
##################################

resource "azurerm_storage_account" "storage_account" {
  for_each = var.storage_account_details
  name                      = each.value.storage_account_name
  resource_group_name       = each.value.resource_group_name
  location                  = each.value.location
  account_tier              = each.value.storage_account_account_tier
  account_replication_type  = each.value.storage_account_replication_type
  account_kind              = each.value.storage_account_kind
  access_tier               = each.value.storage_access_tier
  https_traffic_only_enabled = each.value.https_traffic_only_enabled

   tags = merge(
    {
      name            = var.tag_name
      environment     = var.environ
      applicationname = var.application_name
      resourcename    = each.value.storage_account_name
      datecreated     = var.datecreated
    },
    var.storage_tags
   )

  lifecycle {
    ignore_changes = [storage_tags["datecreated"]]
   }
}

  ##temporary solution for blob delete and blob logging

# provisioner "local-exec" {
#  command = "az storage blob service-properties delete-policy update --days-retained 183  --account-name ${var.storage_account_name} --enable true --account-key ${azurerm_storage_account.storage_account.primary_access_key}"
#  }
# provisioner "local-exec" {
# command = "az storage logging update --log rwd --retention 30 --services b --version 2.0 --account-name ${var.storage_account_name} --account-key ${azurerm_storage_account.storage_account.primary_access_key}"
# }
# }

 ## For Soft Deletion

# resource "null_resource" "soft_delete" {
# provisioner "local-exec" {
#  command = "az storage blob service-properties delete-policy update --days-retained 7  --account-name ${var.storage_account_name} --enable true --account-key ${azurerm_storage_account.storage_account.primary_access_key}"
#  }
#  depends_on = ["azurerm_storage_account.storage_account"]
# }

 ## To update logging settings for an Azure Storage account

# resource "null_resource" "logging" {
# provisioner "local-exec" {
# command = "az storage logging update --log rwd --retention 30 --services b --version 2.0 --account-name ${each.value.storage_account_name} --account-key ${azurerm_storage_account.storage_account.primary_access_key}"
# }
#  depends_on = ["azurerm_storage_account.storage_account"]
# }
