variable "rg_input" {}

module "rgs" {
  source = "../../modules/azurerm-RG"
  rgs    = var.rg_input
}


