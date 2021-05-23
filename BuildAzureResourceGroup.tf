
# Configure the Azure provider
terraform {
 backend "remote" {
   organization = "<ORG_NAME>"
   workspaces {
     name = "Azure"
   }
 }
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }

  required_version = ">= 0.14.9"
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "UK West"
}