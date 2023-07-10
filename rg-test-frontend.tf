resource "azurerm_resource_group" "rg_test_frontend" {
  name     = var.rg_test_frontend
  location = var.rg_test_frontend_location
}

resource "azurerm_virtual_network" "vnet_test_frontend" {
  name                = var.vnet_test_frontend
  location            = var.vnet_test_frontend_location
  resource_group_name = var.rg_test_frontend
  address_space       = var.vnet_test_frontend_address
  
   depends_on = [
     azurerm_resource_group.rg_test_frontend
   ]
     
 } 

resource "azurerm_subnet" "appGateway_subnet" {
  
  name                 = var.appGateway_subnet
  resource_group_name  = var.rg_test_frontend
  virtual_network_name = var.vnet_test_frontend
  address_prefixes     = var.appGateway_subnet_prefix
     depends_on = [
     azurerm_virtual_network.vnet_test_frontend
   ]

}

resource "azurerm_public_ip" "appgw_test_pip" {
  name                = var.appgw_test_pip
  resource_group_name = var.rg_test_frontend
  location            = var.rg_test_frontend_location
  allocation_method   = var.appgw_test_pip_allocation_method
   depends_on = [
     azurerm_resource_group.rg_test_frontend
   ]
}

resource "azurerm_application_gateway" "appgw_test" {
  name                = var.appgw_test
  resource_group_name = var.rg_test_frontend
  location            = var.rg_test_frontend_location

  sku {
    name           = "Standard_Small"
    tier           = "Standard"
    capacity       = 2
  }
  
  backend_address_pool {
      name = var.backend_address_pool_name
  }
  frontend_port {
      name         = var.frontend_port_name
      port         = 80
  }
  frontend_ip_configuration {
      name                 = var.frontend_ip_configuration_name
      public_ip_address_id = azurerm_public_ip.appgw_test_pip.id
  }
  gateway_ip_configuration {
      name         = var.gateway_ip_configuration_name
      subnet_id    = azurerm_subnet.appGateway_subnet.id
  }
  request_routing_rule {
          name                       = var.request_routing_rule_name
          rule_type                  = "Basic"
          http_listener_name         = var.http_listener_name
          backend_address_pool_name  = var.backend_address_pool_name
          backend_http_settings_name = var.backend_http_settings_name
  }
  http_listener {
        name                                  = var.http_listener_name
        frontend_ip_configuration_name        = var.frontend_ip_configuration_name
        frontend_port_name                    = var.frontend_port_name
        protocol                              = "Http"
  }
  backend_http_settings {
      name                  = var.backend_http_settings_name
      cookie_based_affinity = "Disabled"
      port                  = 80
      protocol              = "Http"
     request_timeout        = 240
  }
}  