rg_test_backend                     = "rg-test-backend"
rg_test_backend_location            = "North Europe"
rg_test_frontend                    = "rg-test-frontend"
rg_test_frontend_location           = "North Europe"
rg_test_database                    = "rg-test-database"
rg_test_database_location           = "North Europe"
rg_test_shared                      = "rg-test-shared"
rg_test_shared_location             = "North Europe"
vnet_test_backend                   = "vnet-test-backend"
vnet_test_backend_location          = "North Europe"
vnet_test_backend_address           = ["10.11.0.0/16"]
vnet_test_frontend                  = "vnet-test-frontend"
vnet_test_frontend_location         = "North Europe"
vnet_test_frontend_address          = ["10.10.0.0/16"]
application_subnet                  = "application"
application_subnet_prefix           = ["10.11.1.0/24"]
appGateway_subnet                   = "appGateway"
appGateway_subnet_prefix            = ["10.10.0.0/24"]
vm_test_web                         = "vm-test-web"
vm_test_web_location                = "North Europe"
vm_test_web_size                    = "Standard_DS1_v2"
vm_test_web_username                = "natraj"
vm_test_web_password                = "natraj@12345"
vm_test_web_nic                     = "vm-test-web-nic"
vm_test_web_caching                 = "ReadWrite"
vm_test_web_storage_account_type    = "Standard_LRS"
vm_test_web_publisher               = "MicrosoftWindowsServer"
vm_test_web_offer                   = "WindowsServer"
vm_test_web_sku                     = "2019-Datacenter"
vm_test_web_version                 = "latest"
vm_test_web_datadisk                = "vm-test-web-datadisk-01"
vm_test_web_datadisk_size_gb        = "10"
vm_test_web_ip_config_name          = "ipconfig1"
vm_test_web_ip_config_allocation    = "Dynamic"
vm_test_web_datadisk_create_option  = "Empty"
vm_test_web_datadisk_lun            = "10"
vm_test_web_nsg                     = "vm-test-web-nsg"
vm_test_app                         = "vm-test-app"
vm_test_app_location                = "North Europe"
vm_test_app_size                    = "Standard_DS1_v2"
vm_test_app_username                = "natraj"
vm_test_app_password                = "natraj@12345"
vm_test_app_nic                     = "vm-test-app-nic"
vm_test_app_caching                 = "ReadWrite"
vm_test_app_storage_account_type    = "Standard_LRS"
vm_test_app_publisher               = "MicrosoftWindowsServer"
vm_test_app_offer                   = "WindowsServer"
vm_test_app_sku                     = "2019-Datacenter"
vm_test_app_version                 = "latest"
vm_test_app_datadisk                = "vm-test-app-datadisk-01"
vm_test_app_datadisk_size_gb        = "10"
vm_test_app_ip_config_name          = "ipconfig1"
vm_test_app_ip_config_allocation    = "Dynamic"
vm_test_app_datadisk_create_option  = "Empty"
vm_test_app_datadisk_lun            = "10"
vm_test_app_nsg                     = "vm-test-app-nsg"
vm_test_ai_nic                      = "vm-test-ai-nic"
vm_test_ai_ip_config_name           = "ipconfig1"  
vm_test_ai_ip_config_allocation     = "Dynamic"
vm_test_ai                          = "vm-test-ai"
vm_test_ai_size                     = "Standard_DS1_v2"
vm_test_ai_username                 = "natraj"
vm_test_ai_password                 = "natraj@12345"
vm_test_ai_caching                  = "ReadWrite"
vm_test_ai_storage_account_type     = "Standard_LRS"
vm_test_ai_publisher                = "Canonical"
vm_test_ai_offer                    = "UbuntuServer"
vm_test_ai_sku                      = "16.04-LTS"
vm_test_ai_version                  = "latest"
vm_test_ai_datadisk                 = "vm-test-ai-datadisk-01"
vm_test_ai_datadisk_size_gb         = "10"
vm_test_ai_datadisk_create_option   = "Empty"
vm_test_ai_datadisk_lun             = "10"
vm_test_ai_nsg                      = "vm-test-ai-nsg"
vnet_test_database                  = "vnet-test-database"
vnet_test_database_location         = "North Europe"
vnet_test_database_address          = ["10.12.0.0/16"]
powerbi_subnet                      = "powerbi"
powerbi_subnet_prefix               = ["10.12.0.0/24"]
vm_test_pb_nsg                      = "vm-test-pb-nsg"
vm_test_pb_nic                      = "vm-test-pb-nic"
vm_test_pb_ip_config_name           = "ipconfig1"
vm_test_pb_ip_config_allocation     = "Dynamic"
vm_test_pb                          = "vm-test-pb"
vm_test_pb_location                 = "North Europe"
vm_test_pb_size                     = "Standard_DS1_v2"
vm_test_pb_username                 = "natraj"
vm_test_pb_password                 = "natraj@12345"
vm_test_pb_caching                  = "ReadWrite"
vm_test_pb_storage_account_type     = "Standard_LRS"
vm_test_pb_publisher                = "MicrosoftWindowsServer"
vm_test_pb_offer                    = "WindowsServer"
vm_test_pb_sku                      = "2019-Datacenter"
vm_test_pb_version                  = "latest"
default_subnet                      = "default"
default_subnet_prefix               = ["10.11.0.0/24"]
vm_test_wrkshr_nsg                  = "vm-test-wrkshr-nsg"
vm_test_wrkshr_nic                  = "vm-test-wrkshr-nic"
vm_test_wrkshr_ip_config_name       = "ipconfig1"
vm_test_wrkshr_ip_config_allocation = "Dynamic"
vm_test_wrkshr                      = "vm-test-wrkshr"
vm_test_wrkshr_location             = "North Europe"
vm_test_wrkshr_size                 = "Standard_DS1_v2"
vm_test_wrkshr_username             = "natraj"
vm_test_wrkshr_password             = "natraj@12345"
vm_test_wrkshr_caching              = "ReadWrite"
vm_test_wrkshr_storage_account_type = "Standard_LRS"
vm_test_wrkshr_publisher            = "MicrosoftWindowsServer"
vm_test_wrkshr_offer                = "WindowsServer"
vm_test_wrkshr_sku                  = "2019-Datacenter"
vm_test_wrkshr_version              = "latest"
appgw_test_pip                      = "appgw-test-pip"
appgw_test_pip_allocation_method    = "Dynamic"
appgw_test                          = "appgw-test"
backend_address_pool_name           = "web-test"
frontend_port_name                  = "Http"
gateway_ip_configuration_name       = "Public"
request_routing_rule_name           = "forwardToWeb"
http_listener_name                  = "webHttps"
frontend_ip_configuration_name      = "appGwPublicFrontendIp"
backend_http_settings_name          = "webHttpsSettings"

