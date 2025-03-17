terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.95"
    }
  }
  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = "casopractico2-rg"
  location = "westeurope"
}

