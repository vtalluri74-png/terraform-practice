
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "teams" {
  for_each = toset([
    "dev-rg",
    "test-rg",
    "prod-rg"
  ])

  name     = each.value
  location = "Central India"
}