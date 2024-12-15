variable "rg_input" {}

module "rgs" {
  source = "../../modules/azurerm-RG"
  rgs    = var.rg_input
}

module "vnet" {
  source         = "../../modules/azurerm_vnet"
  vnet_name      = "vnet1"
  location  = "westeurope"
  resource_group_name = "rg1"
}

