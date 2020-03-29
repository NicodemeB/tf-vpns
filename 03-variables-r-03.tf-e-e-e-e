variable "template_image_pfSense-r-03" {
  default = "Packer-pfSense-r-03-TEMPLATE-FCR"
}

variable "pfSense_vm_params_vesxi-r-03" {
  default = {
    vcpu = "1"
    ram  = "2048"
    # You can't set a datastore name with interspace
    disk_datastore = "vESXI-R-03-DS1"
    disk_size      = "25"
  }
}

variable "pfSense_network_params_vesxi-r-03" {
  default = {
    domain        = "test.local"
    label         = "pfSense_network_vesxi-r-03"
    vlan_id       = "0"
    # base_address  = "172.16.27."
    # prefix_length = "20"
    # gateway       = "172.16.31.254"
  }
}

variable "pfSense_base_hostname_vesxi-r-03" {
  default = "r-03-pfs"
}

variable "pfSense_vm_desired_capacity_vesxi-r-03" {
  default = "1"
}
