# How to

## Terraform

### Requirement

**Before to launch terraform apply, you must adapt variables in [00-global-variables.tf](./00-global-variables.tf)**

Make sure to update the credentials to connect to the vCenter. Hosts, template image, clusters, vSwitches, and port groups are defined on this file. 

Environment variables can be used to override variables on the [00-global-variables.tf](./00-global-variables.tf) file,

``` bash
TF_VAR_vcenter_user=admin@vsphere.local
TF_VAR_vcenter_password=Pa$$w0rd
````

### Stack creation

```bash
terraform apply
```

This script will create the following resources:

- 2 network port per pfSense VM deployed 
- 3 pfSense VMs

### Delete stack

```bash
terraform destroy
```

## Packer 

Environment variables are used to allow Packer to connect to the vCenter,

```bash
PACKER_USERNAME=packer@vsphere.local
PACKER_PASSWORD=Pa$$w0rd2.0
```

### Demo

![](./demo/Packer-pfSense.gif)
