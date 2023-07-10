variable "rg_test_backend" {
   type = string
   description = "Azure Resource Group Name"   
}
variable "rg_test_backend_location" {
   type = string
   description = "Azure Resource Group Location"
}
variable "rg_test_frontend" {
   type = string
   description = "Azure Resource Group Name"   
}
variable "rg_test_shared" {
   type = string
   description = "Azure Resource Group Name" 
}
variable "rg_test_shared_location" {
   type = string
   description = "Azure Resource Group Location"
}
variable "rg_test_frontend_location" {
   type = string
   description = "Azure Resource Group Location"
}
variable "rg_test_database" {
   type = string
   description = "Azure Resource Group Name"   
}
variable "rg_test_database_location" {
   type = string
   description = "Azure Resource Group Location"
}
variable "vnet_test_backend" {
   type = string
   description = "Azure Virtual Network Name"
}
variable "vnet_test_backend_location" {
   type = string
   description = "Azure Virtual Network Location"
}
variable "vnet_test_backend_address" {
   type = list(string)
   description = "Azure Virtual Network Address Prefix"
}
variable "vnet_test_frontend" {
   type = string
   description = "Azure Virtual Network Name"
}
variable "vnet_test_frontend_location" {
   type = string
   description = "Azure Virtual Network Location"
}
variable "vnet_test_frontend_address" {
   type = list(string)
   description = "Azure Virtual Network Address Prefix"
}
variable "vnet_test_database" {
   type = string
   description = "Azure Virtual Network Name"
}
variable "vnet_test_database_location" {
   type = string
   description = "Azure Virtual Network Location"
}
variable "vnet_test_database_address" {
   type = list(string)
   description = "Azure Virtual Network Address Prefix"
}
variable "application_subnet" {
   type = string
   description = "Azure Subnet Name"
}
variable "application_subnet_prefix" {
   type = list(string)
   description = "Azure Subnet Address Prefix"
}
variable "appGateway_subnet" {
   type = string
   description = "Azure Subnet Name"
}
variable "appGateway_subnet_prefix" {
   type = list(string)
   description = "Azure Subnet Address Prefix"
}
variable "powerbi_subnet" {
   type = string
   description = "Azure Subnet Name"
}
variable "powerbi_subnet_prefix" {
   type = list(string)
   description = "Azure Subnet Address Prefix"
}
variable "vm_test_web" {
   type = string
   description = "Azure Virtual Machine Name"
}
variable "vm_test_pb" {
   type = string
   description = "Azure Virtual Machine Name"
}
variable "vm_test_web_location" {
   type = string
   description = "Azure Virtual Machine Location"
}
variable "vm_test_pb_location" {
   type = string
   description = "Azure Virtual Machine Location"
}
variable "vm_test_web_size" {
   type = string
   description = "Azure Virtual Machine Size"
}
variable "vm_test_pb_size" {
   type = string
   description = "Azure Virtual Machine Size"
}
variable "vm_test_web_username" {
   type = string
   description = "Azure Virtual Machine UserName"
}
variable "vm_test_pb_username" {
   type = string
   description = "Azure Virtual Machine UserName"
}
variable "vm_test_web_password" {
   type = string
   description = "Azure Virtual Machine Password"
}
variable "vm_test_pb_password" {
   type = string
   description = "Azure Virtual Machine Password"
}
variable "vm_test_web_nic" {
   type = string
   description = "Azure Virtual Network Interface"
}
variable "vm_test_pb_nic" {
   type = string
   description = "Azure Virtual Network Interface"
}
variable "vm_test_web_caching"{
   type = string
   description = "Azure Virtual Machine Caching"
}
variable "vm_test_pb_caching"{
   type = string
   description = "Azure Virtual Machine Caching"
}
variable "vm_test_web_storage_account_type" {
   type = string
   description = "Azure Virtual Machine Storage Account Type"
}
variable "vm_test_pb_storage_account_type" {
   type = string
   description = "Azure Virtual Machine Storage Account Type"
}
variable "vm_test_web_publisher" {
   type = string
   description = "Azure Virtual Machine Publisher"
}
variable "vm_test_pb_publisher" {
   type = string
   description = "Azure Virtual Machine Publisher"
}
variable "vm_test_web_offer" {
   type = string
   description = "Azure Virtual Machine Offer"
}
variable "vm_test_pb_offer" {
   type = string
   description = "Azure Virtual Machine Offer"
}
variable "vm_test_web_sku" {
   type = string
   description = "Azure Virtual Machine SKU"
}
variable "vm_test_pb_sku" {
   type = string
   description = "Azure Virtual Machine SKU"
}
variable "vm_test_web_version" {
   type = string
   description = "Azure Virtual Machine Version"
}
variable "vm_test_pb_version" {
   type = string
   description = "Azure Virtual Machine Version"
}
variable "vm_test_web_datadisk" {
   type = string
   description = "Azure Virtual Machine DataDisk"
}
variable "vm_test_web_datadisk_size_gb" {
   type = string
   description = "Azure Virtual Machine DataDisk Size"
}
variable "vm_test_web_ip_config_name" {
   type = string
   description = "Azure Virtual Machine IP Config Name"
}
variable "vm_test_pb_ip_config_name" {
   type = string
   description = "Azure Virtual Machine IP Config Name"
}
variable "vm_test_web_ip_config_allocation" {
   type = string
   description = "Azure Virtual Machine IP Config Allocation"
}
variable "vm_test_pb_ip_config_allocation" {
   type = string
   description = "Azure Virtual Machine IP Config Allocation"
}
variable "vm_test_web_datadisk_create_option" {
   type = string
   description = "Azure Virtual Machine DataDisk Create Option"
}
variable "vm_test_web_datadisk_lun" {
   type = string
   description = "Azure Virtual Machine DataDisk Lun"
}
variable "vm_test_web_nsg" {
   type = string
   description = "Azure Network Security Group"
}
variable "vm_test_pb_nsg" {
   type = string
   description = "Azure Network Security Group"
}
variable "vm_test_app" {
   type = string
   description = "Azure Virtual Machine Name"
}
variable "vm_test_app_location" {
   type = string
   description = "Azure Virtual Machine Location"
}
variable "vm_test_app_size" {
   type = string
   description = "Azure Virtual Machine Size"
}
variable "vm_test_app_username" {
   type = string
   description = "Azure Virtual Machine UserName"
}
variable "vm_test_app_password" {
   type = string
   description = "Azure Virtual Machine Password"
}
variable "vm_test_app_nic" {
   type = string
   description = "Azure Virtual Network Interface"
}
variable "vm_test_app_caching"{
   type = string
   description = "Azure Virtual Machine Caching"
}
variable "vm_test_app_storage_account_type" {
   type = string
   description = "Azure Virtual Machine Storage Account Type"
}
variable "vm_test_app_publisher" {
   type = string
   description = "Azure Virtual Machine Publisher"
}
variable "vm_test_app_offer" {
   type = string
   description = "Azure Virtual Machine Offer"
}
variable "vm_test_app_sku" {
   type = string
   description = "Azure Virtual Machine SKU"
}
variable "vm_test_app_version" {
   type = string
   description = "Azure Virtual Machine Version"
}
variable "vm_test_app_datadisk" {
   type = string
   description = "Azure Virtual Machine DataDisk"
}
variable "vm_test_app_datadisk_size_gb" {
   type = string
   description = "Azure Virtual Machine DataDisk Size"
}
variable "vm_test_app_ip_config_name" {
   type = string
   description = "Azure Virtual Machine IP Config Name"
}
variable "vm_test_app_ip_config_allocation" {
   type = string
   description = "Azure Virtual Machine IP Config Allocation"
}
variable "vm_test_app_datadisk_create_option" {
   type = string
   description = "Azure Virtual Machine DataDisk Create Option"
}
variable "vm_test_app_datadisk_lun" {
   type = string
   description = "Azure Virtual Machine DataDisk Lun"
}
variable "vm_test_app_nsg" {
   type = string
   description = "Azure Network Security Group"
}
variable "vm_test_ai_nic" {
   type = string
   description = "Azure Virtual Network Interface"
}
variable "vm_test_ai_ip_config_name" {
   type = string
   description = "Azure Virtual Machine IP Config Name"
}
variable "vm_test_ai_ip_config_allocation" {
   type = string
   description = "Azure Virtual Machine IP Config Allocation"
}
variable "vm_test_ai" {
   type = string
   description = "Azure Virtual Machine Name"
}
variable "vm_test_ai_size" {
   type = string
   description = "Azure Virtual Machine Size"
}
variable "vm_test_ai_username" {
   type = string
   description = "Azure Virtual Machine UserName"
}
variable "vm_test_ai_password" {
   type = string
   description = "Azure Virtual Machine Password"
}
variable "vm_test_ai_caching"{
   type = string
   description = "Azure Virtual Machine Caching"
}
variable "vm_test_ai_storage_account_type" {
   type = string
   description = "Azure Virtual Machine Storage Account Type"
}
variable "vm_test_ai_publisher" {
   type = string
   description = "Azure Virtual Machine Publisher"
}
variable "vm_test_ai_offer" {
   type = string
   description = "Azure Virtual Machine Offer"
}
variable "vm_test_ai_sku" {
   type = string
   description = "Azure Virtual Machine SKU"
}
variable "vm_test_ai_version" {
   type = string
   description = "Azure Virtual Machine Version"
}
variable "vm_test_ai_datadisk" {
   type = string
   description = "Azure Virtual Machine DataDisk"
}
variable "vm_test_ai_datadisk_size_gb" {
   type = string
   description = "Azure Virtual Machine DataDisk Size"
}
variable "vm_test_ai_datadisk_create_option" {
   type = string
   description = "Azure Virtual Machine DataDisk Create Option"
}
variable "vm_test_ai_datadisk_lun" {
   type = string
   description = "Azure Virtual Machine DataDisk Lun"
}
variable "vm_test_ai_nsg" {
   type = string
   description = "Azure Network Security Group"
}
variable "default_subnet" {
   type = string
   description = "Azure Subnet Name"
}
variable "default_subnet_prefix" {
   type = list(string)
   description = "Azure Subnet Address Prefix"
}
variable "vm_test_wrkshr_nsg" {
   type = string
   description = "Azure Network Security Group"
}
variable "vm_test_wrkshr_nic" {
   type = string
   description = "Azure Network Interface"
}
variable "vm_test_wrkshr_ip_config_name" {
   type = string
   description = "Azure Virtual Machine IP Config Name"
}
variable "vm_test_wrkshr_ip_config_allocation" {
   type = string
   description = "Azure Virtual Machine IP Config Allocation"
}
variable "vm_test_wrkshr" {
   type = string
   description = "Azure Virtual Machine"
}
variable "vm_test_wrkshr_location" {
   type = string
   description = "Azure Virtual Machine Location"
}
variable "vm_test_wrkshr_size" {
   type = string
   description = "Azure Virtual Machine Size"
}
variable "vm_test_wrkshr_username" {
   type = string
   description = "Azure Virtual Machine UserName"
}
variable "vm_test_wrkshr_password" {
   type = string
   description = "Azure Virtual Machine Password"
}
variable "vm_test_wrkshr_caching" {
   type = string
   description = "Azure Virtual Machine Caching"
}
variable "vm_test_wrkshr_storage_account_type" {
   type = string
   description = "Azure Virtual Machine Storage Account Type"
}
variable "vm_test_wrkshr_publisher" {
   type = string
   description = "Azure Virtual Machine Publisher"
}
variable "vm_test_wrkshr_offer" {
   type = string
   description = "Azure Virtual Machine Offer"
}
variable "vm_test_wrkshr_sku" {
   type = string
   description = "Azure Virtual Machine SKU"
}
variable "vm_test_wrkshr_version" {
   type = string
   description = "Azure Virtual Machine Version"
}
variable "appgw_test_pip" {
   type = string
   description = "Azure Public IP Name"
}
variable "appgw_test_pip_allocation_method" {
   type = string
   description = "Azure Public IP Allocation Method"
}
variable "appgw_test" {
   type = string
   description = "Azure Application Gateway Name"
}
variable "backend_address_pool_name" {
   type = string
   description = "Azure Application Gateway Backend Address Pool Name"
}
variable "frontend_port_name" {
   type = string
   description = "Azure Application Gateway Frontend Port Name"
}
variable "gateway_ip_configuration_name" {
   type = string
   description = "Azure Application Gateway IP Config Name"
}
variable "request_routing_rule_name" {
   type = string
   description = "Azure Application Gateway Request Routing Rule Name"
}
variable "http_listener_name" {
   type = string
   description = "Azure Application Gateway Http Listener Name"
}
variable "frontend_ip_configuration_name" {
   type = string
   description = "Azure Application Gateway Frontend IP Configuration Name"
}
variable "backend_http_settings_name" {
   type = string
   description = "Azure Application Gateway Backend Http Settings Name"
}