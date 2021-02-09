output "vmss_public_ip" {
  value = azurerm_public_ip.vmss.fqdn
}

output "vmss_subnet_id" {
  value = azurerm_subnet.vmss.id
}

output "fdqn" {
  value = random_string.fqdn.result
}