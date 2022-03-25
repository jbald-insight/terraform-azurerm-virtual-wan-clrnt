output "virtual_hub_id" {
  description = "Id of the virtual hub"
  value       = azurerm_virtual_hub.vhub.id
}

output "virtual_hub_default_route_table_id" {
  description = "Id of the default route table in the Virtual Hub"
  value       = azurerm_virtual_hub.vhub.default_route_table_id
}
