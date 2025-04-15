resource_group_name = "devops1-week7-Afrah-Bawhab-rg"
location            = "UAE North"
tags                = { "env" : "production" }
vnet_name           = "devops1-Afrah-vnet"
cidr_block          = ["10.0.0.0/16"]
subnets = {
  public_subnet = {
    address_prefixes = ["10.0.2.0/24"]
  }
  private_subnet = {
    address_prefixes = ["10.0.3.0/24"]
  }
}
public_ip_address             = "Devops1-public-ip-afrah"
disksize                      = "Standard_D2s_v3"
nic_name                      = "devops1-public-ip-Afrah"
nic_subnet_details            = "public_subnet"
private_ip_address_allocation = "Dynamic"
nsg_name                      = "devops1-nsg-Afrah"
security_rule = {
  "allow_ssh" = {
    priority                   = 1001
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  "allow_http" = {
    priority                   = 1002
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  "allow_9000" = {
    priority                   = 1003
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "9000"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  "allow_3000" = {
    priority                   = 1004
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "3000"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  "allow_8080" = {
    priority                   = 1005
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "8080"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

virtual_machine_name           = "devops1-virtual-name-Afrah"
ip_configuration_name          = "Devops1-ipconfig-Afrah"
os_disk_name                   = "devops1-os-disk-Afrah"
mssql_server_name              = "devops1-afrah-server"
mssql_database_name            = "devops1-week7-afrah-sqldatabase"
mssql_firewall_rule_ip_address = "0.0.0.0"
storage_account_name           = "diagafrah"


vm_admin_username                         = "afrah"
vm_admin_password                         = "P@$$w0rd1234!"
vm_disable_password_authentication        = false
mssql_server_administrator_login          = "afrah"
mssql_server_administrator_login_password = "Password123456@"