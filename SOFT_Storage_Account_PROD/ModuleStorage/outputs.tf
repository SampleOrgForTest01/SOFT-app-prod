output "storage_account_ids" {
  value = { for sa_name, sa in azurerm_storage_account.storage_account : sa_name => sa.id }
  description = "IDs of the storage accounts"
}

output "storage_account_names" {
  value = { for sa_name, sa in azurerm_storage_account.storage_account : sa_name => sa.name }
  description = "Names of the storage accounts"
}

output "storage_account_primary_connection_strings" {
  value = { for sa_name, sa in azurerm_storage_account.storage_account : sa_name => sa.primary_connection_string }
  description = "Primary connection strings of the storage accounts"
}

output "storage_account_secondary_connection_strings" {
  value = { for sa_name, sa in azurerm_storage_account.storage_account : sa_name => sa.secondary_connection_string }
  description = "Secondary connection strings of the storage accounts"
}

output "storage_account_primary_access_keys" {
  value = { for sa_name, sa in azurerm_storage_account.storage_account : sa_name => sa.primary_access_key }
  description = "Primary access keys of the storage accounts"
}

output "storage_account_secondary_access_keys" {
  value = { for sa_name, sa in azurerm_storage_account.storage_account : sa_name => sa.secondary_access_key }
  description = "Secondary access keys of the storage accounts"
}
