# Create a Provider Provider
terraform {
  required_version = ">= 0.14, < 0.15"
}

provider "azurerm" {
  subscription_id = "Insira a sua Subscription"
  tenant_id       = "Insira o seu Tenant"
  features {}
}

# Create a Resource 
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}





