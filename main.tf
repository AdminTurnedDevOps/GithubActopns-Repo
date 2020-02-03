provider "azurerm" {
  version         = "1.38.0"
  subscription_id = var.sub
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  tenant_id       = "${var.tenant_id}"
}

resource "azurerm_resource_group" "DevRG" {
  name     = "Dev10"
  location = "eastus"

  tags = {
    environment = "Dev"
  }
}