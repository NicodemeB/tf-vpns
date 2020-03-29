# Configure vlan and network params

resource "vsphere_host_virtual_switch" "pfSense_vs_esxi-u-01" {
  name           = var.vswitches.vesxi-u-01-vs-1
  host_system_id = data.vsphere_host.vesxi-u-01.id
  network_adapters = []
  active_nics  = []
  standby_nics = []
}

resource "vsphere_host_port_group" "pfSense_port-vesxi-u-01-out" {
  name                = join("", [var.pfSense_network_params_vesxi-u-01["label"], "-out"])
  host_system_id      = data.vsphere_host.vesxi-u-01.id
  virtual_switch_name = var.vswitches.vesxi-u-01-vs-0
  vlan_id             = var.pfSense_network_params_vesxi-u-01["vlan_id"]
  allow_promiscuous   = true
  # provisioner "local-exec" {
  #   command = "sleep 10"
  # }
  depends_on    = [vsphere_host_virtual_switch.pfSense_vs_esxi-u-01]
}

resource "vsphere_host_port_group" "pfSense_port-vesxi-u-01-in" {
  name                = join("", [var.pfSense_network_params_vesxi-u-01["label"], "-in"])
  host_system_id      = data.vsphere_host.vesxi-u-01.id
  virtual_switch_name = var.vswitches.vesxi-u-01-vs-1
  vlan_id             = var.pfSense_network_params_vesxi-u-01["vlan_id"]
  allow_promiscuous   = true
  # provisioner "local-exec" {
  #   command = "sleep 10"
  # }
  depends_on    = [vsphere_host_virtual_switch.pfSense_vs_esxi-u-01]
}


resource "vsphere_host_virtual_switch" "pfSense_vs_esxi-u-02" {
  name           = var.vswitches.vesxi-u-02-vs-1
  host_system_id = data.vsphere_host.vesxi-u-02.id
  network_adapters = []
  active_nics  = []
  standby_nics = []
}

resource "vsphere_host_port_group" "pfSense_port-vesxi-u-02-out" {
  name                = join("", [var.pfSense_network_params_vesxi-u-02["label"], "-out"])
  host_system_id      = data.vsphere_host.vesxi-u-02.id
  virtual_switch_name = var.vswitches.vesxi-u-02-vs-0
  vlan_id             = var.pfSense_network_params_vesxi-u-02["vlan_id"]
  allow_promiscuous   = true
  # provisioner "local-exec" {
  #   command = "sleep 10"
  # }
  depends_on    = [vsphere_host_virtual_switch.pfSense_vs_esxi-u-02]
}

resource "vsphere_host_port_group" "pfSense_port-vesxi-u-02-in" {
  name                = join("", [var.pfSense_network_params_vesxi-u-02["label"], "-in"])
  host_system_id      = data.vsphere_host.vesxi-u-02.id
  virtual_switch_name = var.vswitches.vesxi-u-02-vs-1
  vlan_id             = var.pfSense_network_params_vesxi-u-02["vlan_id"]
  allow_promiscuous   = true
  # provisioner "local-exec" {
  #   command = "sleep 10"
  # }
  depends_on    = [vsphere_host_virtual_switch.pfSense_vs_esxi-u-02]
}



resource "vsphere_host_virtual_switch" "pfSense_vs_esxi-r-03" {
  name           = var.vswitches.vesxi-r-03-vs-1
  host_system_id = data.vsphere_host.vesxi-r-03.id
  network_adapters = []
  active_nics  = []
  standby_nics = []
}

resource "vsphere_host_port_group" "pfSense_port-vesxi-r-03-out" {
  name                = join("", [var.pfSense_network_params_vesxi-r-03["label"], "-out"])
  host_system_id      = data.vsphere_host.vesxi-r-03.id
  virtual_switch_name = var.vswitches.vesxi-r-03-vs-0
  vlan_id             = var.pfSense_network_params_vesxi-r-03["vlan_id"]
  allow_promiscuous   = true
  # provisioner "local-exec" {
  #   command = "sleep 10"
  # }
  depends_on    = [vsphere_host_virtual_switch.pfSense_vs_esxi-r-03]
}

resource "vsphere_host_port_group" "pfSense_port-vesxi-r-03-in" {
  name                = join("", [var.pfSense_network_params_vesxi-r-03["label"], "-in"])
  host_system_id      = data.vsphere_host.vesxi-r-03.id
  virtual_switch_name = var.vswitches.vesxi-r-03-vs-1
  vlan_id             = var.pfSense_network_params_vesxi-r-03["vlan_id"]
  allow_promiscuous   = true
  # provisioner "local-exec" {
  #   command = "sleep 10"
  # }
  depends_on    = [vsphere_host_virtual_switch.pfSense_vs_esxi-r-03]
}

