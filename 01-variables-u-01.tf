variable "template_image_pfSense-u-01" {
  default = "Packer-pfSense-u-01-TEMPLATE-FCR"
}

variable "pfSense_vm_params_vesxi-u-01" {
  default = {
    vcpu = "1"
    ram  = "2048"
    # You can't set a datastore name with interspace
    disk_datastore = "vESXI-U-01-DS1"
    disk_size      = "25"
  }
}

variable "pfSense_network_params_vesxi-u-01" {
  default = {
    domain        = "test.local"
    label         = "pfSense_network_vesxi-u-01"
    vlan_id       = "0"
    # base_address  = "172.16.27."
    # prefix_length = "20"
    # gateway       = "172.16.31.254"
  }
}

variable "pfSense_base_hostname_vesxi-u-01" {
  default = "u-01-pfs"
}

variable "pfSense_vm_desired_capacity_vesxi-u-01" {
  default = "1"
}


