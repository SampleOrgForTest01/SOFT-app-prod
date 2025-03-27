terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }

  # Backend Details:

  # backend "azurerm" {
  #   resource_group_name  = "" #Provide the Resource Group name of the Backend here
  #   storage_account_name = "" #Provide the Storage Account name of the Backend here
  #   container_name       = "" #Provide the Container name of the Backend here
  #   key                  = "" #Provide the name of the Backend here
  #   access_key            = ""
  #   use_msi = true
  # }
}

provider "azurerm" {
  features {}
}

locals {
  timestamp = "${formatdate("YYYY-MM-DD", timestamp())}"
}
