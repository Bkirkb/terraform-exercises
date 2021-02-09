// Public IP Output
output "vm_pub_ip" {
  value = azurerm_linux_virtual_machine.terraform.public_ip_address
}

// Private IP Output

// VM Name Output
output "vm_name" {
  value = azurerm_linux_virtual_machine.terraform.name
}

// Admin User Output
output "admin_user" {
  value = azurerm_linux_virtual_machine.terraform.admin_username
}
