
resource "azurerm_network_security_group" "demo1_sec" {
  name                = "devops-security-group"
  location            = azurerm_resource_group.project1.location
  resource_group_name = azurerm_resource_group.project1.name
}

resource "azurerm_virtual_network" "demo_vnet" {
  name                = "demo-vnet"
  location            = azurerm_resource_group.project1.location
  resource_group_name = azurerm_resource_group.project1.name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
    security_group = azurerm_network_security_group.demo1_sec.id
  }

  subnet {
    name           = "subnet3"
    address_prefix = "10.0.3.0/24"
  }

  tags = {
    environment = "tier1"
  }
}