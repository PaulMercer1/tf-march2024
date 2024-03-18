terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.96.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features{}
}

# Create resource group used for rest of deployment
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}
