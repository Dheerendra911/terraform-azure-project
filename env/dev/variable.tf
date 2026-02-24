variable "rg_todo" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "vnet_todo" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
  }))
}

variable "subnet_todo" {
  type = map(object({
    name                 = string
    virtual_network_name = string
    resource_group_name  = string
    address_prefixes     = list(string)
  }))
}

variable "nsg_todo" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
}

variable "vm_todo" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    size                = string
    admin_username      = string
  }))
}

variable "todo_asg" {
  type = map(any)
}
variable "todo_nic" {
  
}
variable "todo_pip" {
  
}