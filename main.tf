terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.96.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.6.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features{}
}

resource "random_id" "storename" {
  byte_length = 8
}

# Create resource group used for rest of deployment
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}
