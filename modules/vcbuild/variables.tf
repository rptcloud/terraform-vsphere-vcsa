variable "vcbuild_esxihostname" {
  description = "ESXi hostname to deploy VCSA"
  default     = "192.168.169.34"
}

variable "vcbuild_esxiusername" {
  description = "ESXi username to deploy VCSA"
  default     = "root"
}

variable "vcbuild_sso_domain_name" {
  description = "SSO domain name"
  default     = "vsphere.local"
}

variable "vcbuild_deployment_network" {
  description = "Network to deploy VCSA"
  default     = "VM Network"
}

variable "vcbuild_thin_disk_mode" {
  description = "Use thin disks for VCSA?  Valid options are 'true' or 'false' "
  default     = false
}

variable "vcbuild_deployment_option" {
  description = "VCSA sizing.  Valid options are 'tiny', 'small', 'medium', 'large', 'x-large' "
  default     = "small"
}

variable "vcbuild_ip_family" {
  description = "ipv4 or ipv6"
  default     = "ipv4"
}

variable "vcbuild_network_mode" {
  description = "static or dhcp"
  default     = "static"
}

variable "vcbuild_datastore" {
  description = "Datastore to deploy VCSA"
  default     = "raid10_gen7"
}

variable "vcbuild_vchostname" {
  description = "vCenter host name"
  default     = "tfvcenter01"
}

variable "vcbuild_vcrootpassword" {
  description = "Root password for vcenter server"
  default     = "$$hRPTpass123!"
}

variable "vcbuild_vcssopassword" {
  description = "SSO password for vcenter server"
  default     = "RPTpass123!"
}

variable "vcbuild_ntp_servers" {
  description = "NTP servers"
  default     = "time.nist.gov"
}

variable "vcbuild_ssh_enable" {
  description = "Enable SSH?  'true' or 'false' "
  default     = true
}

variable "vcbuild_esxipassword" {
  description = "esxi password"
  default     = "RPTpass123!"
}

variable "vcbuild_vcip" {
  description = "ip address"
  default     = "192.168.169.55"
}

variable "vcbuild_dnsserver" {
  description = "dns server"
  default     = "8.8.8.8"
}

variable "vcbuild_ipprefix" {
  description = "Network prefix length (bits for subnet mask). Use only when the mode is 'static'."
  default     = "24"
}

variable "vcbuild_gateway" {
  description = "gateway"
  default     = "192.168.169.3"
}

variable "vcbuild_vcfqdn" {
  description = "FQDN or IP address for the appliance."
  default     = "192.168.169.55"
}

variable "vcbuild_ceip_enabled" {
  description = "Join VMware Customer Experience Program? 'true' or 'false' "
  default     = false
}