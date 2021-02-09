variable "location" {}
variable "resource_group_name" {}
variable "environment"{}
variable "vm_size" {}
variable "vmss_subnet_id" {}
variable "admin_password" {}
variable "fdqn" {}
variable "tags"{
    description = "A map of the tags to use for the resource group"
    type = map(string)

    default = {
        environment = "vmss"
    }
}
variable "admin_user" {
    description = "User name to use as the admin account"
    default = "azureuser"
}


