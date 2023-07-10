resource "azurerm_resource_group" "rg_test_database" {
  name     = var.rg_test_database
  location = var.rg_test_database_location
}

resource "azurerm_virtual_network" "vnet_test_database" {
  name                = var.vnet_test_database
  location            = var.vnet_test_database_location
  resource_group_name = var.rg_test_database
  address_space       = var.vnet_test_database_address
  
   depends_on = [
     azurerm_resource_group.rg_test_database
   ]
     
 } 

resource "azurerm_subnet" "powerbi_subnet" {
  
  name                 = var.powerbi_subnet
  resource_group_name  = var.rg_test_database
  virtual_network_name = var.vnet_test_database
  address_prefixes     = var.powerbi_subnet_prefix
     depends_on = [
     azurerm_virtual_network.vnet_test_database
   ]

}

resource "azurerm_network_security_group" "vm_test_pb_nsg" {
  name                = var.vm_test_pb_nsg
  location            = var.vnet_test_database_location
  resource_group_name = var.rg_test_database
  depends_on = [
     azurerm_resource_group.rg_test_database
   ]
}

resource "azurerm_network_interface_security_group_association" "vm_test_pb_nsg_association" {
  network_interface_id      = azurerm_network_interface.vm_test_pb_nic.id
  network_security_group_id = azurerm_network_security_group.vm_test_pb_nsg.id
    depends_on = [
     azurerm_network_security_group.vm_test_pb_nsg,
	 azurerm_network_interface.vm_test_pb_nic
   ]
}

resource "azurerm_network_interface" "vm_test_pb_nic" {
  name                = var.vm_test_pb_nic
  location            = var.rg_test_database_location
  resource_group_name = var.rg_test_database

  ip_configuration {
    name                          = var.vm_test_pb_ip_config_name
    subnet_id                     = azurerm_subnet.powerbi_subnet.id
    private_ip_address_allocation = var.vm_test_pb_ip_config_allocation
  }
}

resource "azurerm_windows_virtual_machine" "vm_test_pb" {
  name                  = var.vm_test_pb
  location              = var.vm_test_pb_location
  resource_group_name   = var.rg_test_database
  size                  = var.vm_test_pb_size
  admin_username        = var.vm_test_pb_username
  admin_password        = var.vm_test_pb_password
  
  network_interface_ids = [
    azurerm_network_interface.vm_test_pb_nic.id
  ]
  
  os_disk {
    caching              = var.vm_test_pb_caching
    storage_account_type = var.vm_test_pb_storage_account_type
  }

  source_image_reference {
    publisher = var.vm_test_pb_publisher
    offer     = var.vm_test_pb_offer
    sku       = var.vm_test_pb_sku
    version   = var.vm_test_pb_version
  }
  
}