provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

module "vm_apache" {
  source              = "./modules/vm_apache"
  name                = "apachedemo"
  location            = var.location
  resource_group_name = var.resource_group_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
}
