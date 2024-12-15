terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.106.1"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Samarth-RG"
    storage_account_name = "ravibackend"
    container_name       = "dev"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
