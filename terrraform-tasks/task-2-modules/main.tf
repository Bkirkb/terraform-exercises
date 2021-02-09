// Terraform Config Block
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

// Provider
provider "azurerm" {
  features {}
}

// Resource Group
resource "azurerm_resource_group" "main" {
  name     = "${var.project_name}-rg"
  location = var.location
}

// Virtual Machines module
module "virtual_machines" {
  source = "./vm"
  // variables passed down to child modules here
  project_name = var.project_name
  resource_group = azurerm_resource_group.main.name
  location = var.location
  vm_size = var.vm_size
  public_subnet_id = module.virtual_network.public_subnet_id
  private_subnet_id = module.virtual_network.private_subnet_id
}

// Virtual Networks module
module "virtual_network" {
  source = "./vnet"
  // variables passed down to child modules here
  project_name = var.project_name
  resource_group = azurerm_resource_group.main.name
  location = var.location
}
