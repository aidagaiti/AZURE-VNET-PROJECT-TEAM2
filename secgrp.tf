
resource "azurerm_network_security_group" "demo22_sec" {
  name                = "demo_sec"
  location            = azurerm_resource_group.project1.location
  resource_group_name = azurerm_resource_group.project1.name

  security_rule {
    name                       = "demo_sec"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "443"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "demo_sec"
    priority                   = 101
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "80"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  security_rule {
    name                       = "demo_sec"
    priority                   = 103
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "ssh"
    source_port_range          = "22"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "10.0.3.0/24"
  }

  tags = {
    environment = "Production"
  }
}