

variable "vms" {
  type = map(object({
    nic_name            = string
    location            = string
    resource_group_name = string
    vnet_name           = string
    subnet_name         = string
    pip_name            = string
    vm_name             = string
    source_image_reference = map(string)
    }))
      
  }

