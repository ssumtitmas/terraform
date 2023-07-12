provider "azurerm" {
    features{} 
}
resource "azurerm_resource_group" "tf" {
  name = "tf-rg"
  location = "UK South"
}
resource "azurerm_resource_group" "tf1" {
  name = "tf1-rg"
  location = azurerm_resource_group.tf.location
}