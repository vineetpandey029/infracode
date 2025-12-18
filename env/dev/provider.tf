terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.52.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = ""
  #   storage_account_name = ""
  #   container_name       = ""
  #   key                  = ""

  # }
}

provider "azurerm" {
  features {

  }
  subscription_id = "a43b4ce1-c640-4e6f-9491-095b358dc333"
}
