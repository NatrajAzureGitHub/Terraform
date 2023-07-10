resource "azurerm_resource_group" "rg_test_backend" {
  name     = var.rg_test_backend
  location = var.rg_test_backend_location
}

resource "azurerm_virtual_network" "vnet_test_backend" {
  name                = var.vnet_test_backend
  location            = var.vnet_test_backend_location
  resource_group_name = var.rg_test_backend
  address_space       = var.vnet_test_backend_address
  
   depends_on = [
     azurerm_resource_group.rg_test_backend
   ]
     
 } 

resource "azurerm_subnet" "application_subnet" {
  
  name                 = var.application_subnet
  resource_group_name  = var.rg_test_backend
  virtual_network_name = var.vnet_test_backend
  address_prefixes     = var.application_subnet_prefix
     depends_on = [
     azurerm_virtual_network.vnet_test_backend,
	 azurerm_resource_group.rg_test_backend
   ]

}

resource "azurerm_subnet" "default_subnet" {
  
  name                 = var.default_subnet
  resource_group_name  = var.rg_test_backend
  virtual_network_name = var.vnet_test_backend
  address_prefixes     = var.default_subnet_prefix
     depends_on = [
     azurerm_virtual_network.vnet_test_backend,
	 azurerm_resource_group.rg_test_backend
   ]

}

resource "azurerm_network_security_group" "vm_test_web_nsg" {
  name                = var.vm_test_web_nsg
  location            = var.vnet_test_backend_location
  resource_group_name = var.rg_test_backend
  depends_on = [
     azurerm_resource_group.rg_test_backend
   ]
}

resource "azurerm_network_interface_security_group_association" "vm_test_web_nsg_association" {
  network_interface_id      = azurerm_network_interface.vm_test_web_nic.id
  network_security_group_id = azurerm_network_security_group.vm_test_web_nsg.id
    depends_on = [
     azurerm_network_security_group.vm_test_web_nsg,
	 azurerm_network_interface.vm_test_web_nic
   ]
}

resource "azurerm_network_interface" "vm_test_web_nic" {
  name                = var.vm_test_web_nic
  location            = var.rg_test_backend_location
  resource_group_name = var.rg_test_backend

  ip_configuration {
    name                          = var.vm_test_web_ip_config_name
    subnet_id                     = azurerm_subnet.application_subnet.id
    private_ip_address_allocation = var.vm_test_web_ip_config_allocation
  }
}

resource "azurerm_windows_virtual_machine" "vm_test_web" {
  name                  = var.vm_test_web
  location              = var.vm_test_web_location
  resource_group_name   = var.rg_test_backend
  size                  = var.vm_test_web_size
  admin_username        = var.vm_test_web_username
  admin_password        = var.vm_test_web_password
  
  network_interface_ids = [
    azurerm_network_interface.vm_test_web_nic.id
  ]
  
  os_disk {
    caching              = var.vm_test_web_caching
    storage_account_type = var.vm_test_web_storage_account_type
  }

  source_image_reference {
    publisher = var.vm_test_web_publisher
    offer     = var.vm_test_web_offer
    sku       = var.vm_test_web_sku
    version   = var.vm_test_web_version
  }
  
}
     
resource "azurerm_managed_disk" "vm_test_web_datadisk" {
  name                 = var.vm_test_web_datadisk
  location             = var.rg_test_backend_location
  resource_group_name  = var.rg_test_backend
  storage_account_type = var.vm_test_web_storage_account_type
  create_option        = var.vm_test_web_datadisk_create_option
  disk_size_gb         = var.vm_test_web_datadisk_size_gb
  
  depends_on = [
     azurerm_windows_virtual_machine.vm_test_web
   ]
  
}

resource "azurerm_virtual_machine_data_disk_attachment" "vm_test_web_data_disk_attachment" {
  managed_disk_id    = azurerm_managed_disk.vm_test_web_datadisk.id
  virtual_machine_id = azurerm_windows_virtual_machine.vm_test_web.id
  lun                = var.vm_test_web_datadisk_lun
  caching            = var.vm_test_web_caching
  
  depends_on = [
     azurerm_windows_virtual_machine.vm_test_web
   ]
}


resource "azurerm_network_security_group" "vm_test_app_nsg" {
  name                = var.vm_test_app_nsg
  location            = var.vnet_test_backend_location
  resource_group_name = var.rg_test_backend
  depends_on = [
     azurerm_resource_group.rg_test_backend
   ]
}

resource "azurerm_network_interface_security_group_association" "vm_test_app_nsg_association" {
  network_interface_id      = azurerm_network_interface.vm_test_app_nic.id
  network_security_group_id = azurerm_network_security_group.vm_test_app_nsg.id
    depends_on = [
     azurerm_network_security_group.vm_test_app_nsg,
	 azurerm_network_interface.vm_test_app_nic
   ]
}

resource "azurerm_network_interface" "vm_test_app_nic" {
  name                = var.vm_test_app_nic
  location            = var.rg_test_backend_location
  resource_group_name = var.rg_test_backend

  ip_configuration {
    name                          = var.vm_test_app_ip_config_name
    subnet_id                     = azurerm_subnet.application_subnet.id
    private_ip_address_allocation = var.vm_test_app_ip_config_allocation
  }
}

resource "azurerm_windows_virtual_machine" "vm_test_app" {
  name                  = var.vm_test_app
  location              = var.vm_test_app_location
  resource_group_name   = var.rg_test_backend
  size                  = var.vm_test_app_size
  admin_username        = var.vm_test_app_username
  admin_password        = var.vm_test_app_password
  
  network_interface_ids = [
    azurerm_network_interface.vm_test_app_nic.id
  ]
  
  os_disk {
    caching              = var.vm_test_app_caching
    storage_account_type = var.vm_test_app_storage_account_type
  }

  source_image_reference {
    publisher = var.vm_test_app_publisher
    offer     = var.vm_test_app_offer
    sku       = var.vm_test_app_sku
    version   = var.vm_test_app_version
  }
  
}
     
resource "azurerm_managed_disk" "vm_test_app_datadisk" {
  name                 = var.vm_test_app_datadisk
  location             = var.rg_test_backend_location
  resource_group_name  = var.rg_test_backend
  storage_account_type = var.vm_test_app_storage_account_type
  create_option        = var.vm_test_app_datadisk_create_option
  disk_size_gb         = var.vm_test_app_datadisk_size_gb
  
  depends_on = [
     azurerm_windows_virtual_machine.vm_test_app
   ]
  
}

resource "azurerm_virtual_machine_data_disk_attachment" "vm_test_app_data_disk_attachment" {
  managed_disk_id    = azurerm_managed_disk.vm_test_app_datadisk.id
  virtual_machine_id = azurerm_windows_virtual_machine.vm_test_app.id
  lun                = var.vm_test_app_datadisk_lun
  caching            = var.vm_test_app_caching
  
  depends_on = [
     azurerm_windows_virtual_machine.vm_test_app
   ]
}

resource "azurerm_network_interface" "vm_test_ai_nic" {
  name                = var.vm_test_ai_nic
  location            = var.rg_test_backend_location
  resource_group_name = var.rg_test_backend

  ip_configuration {
    name                          = var.vm_test_ai_ip_config_name
    subnet_id                     = azurerm_subnet.application_subnet.id
    private_ip_address_allocation = var.vm_test_ai_ip_config_allocation
  }
}

resource "azurerm_linux_virtual_machine" "vm_test_ai" {
  name                  = var.vm_test_ai
  resource_group_name   = var.rg_test_backend
  location              = var.rg_test_backend_location
  size                  = var.vm_test_ai_size
  admin_username        = var.vm_test_ai_username
  admin_password        = var.vm_test_ai_password
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.vm_test_ai_nic.id
  ]
  
 
  os_disk {
    caching              = var.vm_test_ai_caching
    storage_account_type = var.vm_test_ai_storage_account_type
  }

  source_image_reference {
    publisher = var.vm_test_ai_publisher
    offer     = var.vm_test_ai_offer
    sku       = var.vm_test_ai_sku
    version   = var.vm_test_ai_version
  }
}

resource "azurerm_managed_disk" "vm_test_ai_datadisk" {
  name                 = var.vm_test_ai_datadisk
  location             = var.rg_test_backend_location
  resource_group_name  = var.rg_test_backend
  storage_account_type = var.vm_test_ai_storage_account_type
  create_option        = var.vm_test_ai_datadisk_create_option
  disk_size_gb         = var.vm_test_ai_datadisk_size_gb
  
  depends_on = [
     azurerm_linux_virtual_machine.vm_test_ai
   ]
  
}

resource "azurerm_virtual_machine_data_disk_attachment" "vm_test_ai_data_disk_attachment" {
  managed_disk_id    = azurerm_managed_disk.vm_test_ai_datadisk.id
  virtual_machine_id = azurerm_linux_virtual_machine.vm_test_ai.id
  lun                = var.vm_test_ai_datadisk_lun
  caching            = var.vm_test_ai_caching
  
  depends_on = [
     azurerm_linux_virtual_machine.vm_test_ai
   ]
}

resource "azurerm_network_security_group" "vm_test_ai_nsg" {
  name                = var.vm_test_ai_nsg
  location            = var.vnet_test_backend_location
  resource_group_name = var.rg_test_backend
  depends_on = [
     azurerm_resource_group.rg_test_backend
   ]
}

resource "azurerm_network_interface_security_group_association" "vm_test_ai_nsg_association" {
  network_interface_id      = azurerm_network_interface.vm_test_ai_nic.id
  network_security_group_id = azurerm_network_security_group.vm_test_ai_nsg.id
    depends_on = [
     azurerm_network_security_group.vm_test_ai_nsg,
	 azurerm_network_interface.vm_test_ai_nic
   ]
}

resource "azurerm_network_security_group" "vm_test_wrkshr_nsg" {
  name                = var.vm_test_wrkshr_nsg
  location            = var.vnet_test_backend_location
  resource_group_name = var.rg_test_backend
  depends_on = [
     azurerm_resource_group.rg_test_backend
   ]
}

resource "azurerm_network_interface_security_group_association" "vm_test_wrkshr_nsg_association" {
  network_interface_id      = azurerm_network_interface.vm_test_wrkshr_nic.id
  network_security_group_id = azurerm_network_security_group.vm_test_wrkshr_nsg.id
    depends_on = [
     azurerm_network_security_group.vm_test_wrkshr_nsg,
	 azurerm_network_interface.vm_test_wrkshr_nic
   ]
}

resource "azurerm_network_interface" "vm_test_wrkshr_nic" {
  name                = var.vm_test_wrkshr_nic
  location            = var.rg_test_backend_location
  resource_group_name = var.rg_test_backend

  ip_configuration {
    name                          = var.vm_test_wrkshr_ip_config_name
    subnet_id                     = azurerm_subnet.default_subnet.id
    private_ip_address_allocation = var.vm_test_wrkshr_ip_config_allocation
  }
}

resource "azurerm_windows_virtual_machine" "vm_test_wrkshr" {
  name                  = var.vm_test_wrkshr
  location              = var.vm_test_wrkshr_location
  resource_group_name   = var.rg_test_backend
  size                  = var.vm_test_wrkshr_size
  admin_username        = var.vm_test_wrkshr_username
  admin_password        = var.vm_test_wrkshr_password
  
  network_interface_ids = [
    azurerm_network_interface.vm_test_wrkshr_nic.id
  ]
  
  os_disk {
    caching              = var.vm_test_wrkshr_caching
    storage_account_type = var.vm_test_wrkshr_storage_account_type
  }

  source_image_reference {
    publisher = var.vm_test_wrkshr_publisher
    offer     = var.vm_test_wrkshr_offer
    sku       = var.vm_test_wrkshr_sku
    version   = var.vm_test_wrkshr_version
  }
  
}