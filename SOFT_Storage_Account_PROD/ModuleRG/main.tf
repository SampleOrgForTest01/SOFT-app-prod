##########################
# RESOURCE GROUP MODULE
##########################

resource "azurerm_resource_group" "rg" {
  for_each = var.rgdetails
  name     = each.value.name
  location = each.value.location

  tags = merge(
    {
      name            = var.tag_name 
      environment     = var.environ
      applicationname = var.application_name
      resourcename    = each.value.name
      datecreated     = var.datecreated
    },
    var.rg_tags
  )

  lifecycle {
    ignore_changes = [rg_tags["datecreated"]]
  }
}