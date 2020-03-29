# Configure the VMware vSphere Provider
# You can use vcenter login params or simply host esxi login params
provider "vsphere" {
  # If you use a domain set your login like this "MyDomain\\MyUser"
  user           = "terraform@vsphere.rack"
  password       = "password"
  vsphere_server = "vcenterserver.rack"

  # if you have a self-signed cert
  allow_unverified_ssl = true
}

#### TEMPLATES



variable "template_image_pfSense" {
  default = "Packer-pfSense-TEMPLATE-FCR"
}

#### DC AND CLUSTER
# # Set vpshere datacenter
variable "dc" {
  default = "FCR"
}

# Set host where you want deploy your vm
variable "hosts" {
  default = [
    {
      name = "vesxi-u-01"
      hostname = "vesxi-u-01.rack"
    },
    {
      name = "vesxi-u-02"
      hostname = "vesxi-u-02.rack"
    },
    {
      name = "vesxi-r-03"
      hostname = "vesxi-r-03.rack"
    }
  ]
}

# output "DEBUG" {
#   value = [for host in var.hosts : "${host.name} ${host.hostname}"]
# }

# Set cluster where you want deploy your vm
variable "clusters" {
  type = map

  default = {
    vesxi-u-01 = "vesxi-u-01.rack"
    vesxi-u-02 = "vesxi-u-02.rack"
    vesxi-r-03 = "vesxi-r-03.rack"
  }
}

#### GLOBAL NETWORK PARAMS
# Virtual switch used
variable "vswitches" {
  type = map

  default = {
    vesxi-u-01-vs-0 = "vSwitch0"
    vesxi-u-01-vs-1 = "vSwitch1"
    vesxi-u-02-vs-0 = "vSwitch0"
    vesxi-u-02-vs-1 = "vSwitch1"
    vesxi-r-03-vs-0 = "vSwitch0"
    vesxi-r-03-vs-1 = "vSwitch1"
  }
}
# Virtual switch used
variable "port_groups" {
  type = map

  default = {
    vesxi-u-01-pg-0 = "VM Network - vesxi-u-01"
    vesxi-u-02-pg-0 = "VM Network - vesxi-u-02"
    vesxi-r-03-pg-0 = "VM Network - vesxi-r-03"
  }
}
