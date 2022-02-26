resource "azurerm_kubernetes_cluster" "tf-px-aks" {
  name                = "tf-px-aks"
  location            = "eastus"
  resource_group_name = "pixie-test"
  dns_prefix          = "tfakspx"

  default_node_pool {
    name       = "tfdefault"
    node_count = 1
    vm_size    = "Standard_B2ms"
  }

    identity {
      type = "SystemAssigned"
    }

}



resource "azurerm_resource_group" "gonsite" {
  name = "gonwebsite"
  location = "eastus2"
}
resource "azurerm_static_site" "gonsite" {
  name = "gonsite"
  location = azurerm_resource_group.gonsite.location
  resource_group_name = azurerm_resource_group.gonsite.name
  sku_tier = "Standard"
  sku_size = "Standard"

}


output "default_host_name" {
  value = azurerm_static_site.gonsite.default_host_name
}

output "man_token" {
  value = azurerm_static_site.gonsite.api_key
}