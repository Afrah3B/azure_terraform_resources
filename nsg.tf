resource "azurerm_network_security_group" "network_security_group" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name

  security_rule {
    name                       = "allow_ssh"
    priority                   = 1001
    direction                  = var.security_rule_direction
    access                     = var.security_rule_access
    protocol                   = "Tcp"
    source_port_range          = var.security_rule_all
    destination_port_range     = "22"
    source_address_prefix      = var.security_rule_all
    destination_address_prefix = var.security_rule_all
  }
  security_rule {
    name                       = "allow_port_9000"
    priority                   = 1002
    direction                  = var.security_rule_direction
    access                     = var.security_rule_access
    protocol                   = var.security_rule_all
    source_port_range          = var.security_rule_all
    destination_port_range     = "9000"
    source_address_prefix      = var.security_rule_all
    destination_address_prefix = var.security_rule_all
  }
  security_rule {
    name                       = "allow_port_3000"
    priority                   = 1003
    direction                  = var.security_rule_direction
    access                     = var.security_rule_access
    protocol                   = var.security_rule_all
    source_port_range          = var.security_rule_all
    destination_port_range     = "3000"
    source_address_prefix      = var.security_rule_all
    destination_address_prefix = var.security_rule_all
  }
  security_rule {
    name                       = "allow_port_8080"
    priority                   = 1004
    direction                  = var.security_rule_direction
    access                     = var.security_rule_access
    protocol                   = var.security_rule_all
    source_port_range          = var.security_rule_all
    destination_port_range     = "8080"
    source_address_prefix      = var.security_rule_all
    destination_address_prefix = var.security_rule_all
  }

  tags = var.tags
}