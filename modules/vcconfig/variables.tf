variable "datacenter" {
  default = "dc"
}

variable "vcpassword" {
  description = "vcpassword"
  default = "Pa55w0rd999!!!"
}

variable "network_interfaces" {
  default = [
    "vmnic0",
    "vmnic1",
    "vmnic2",
    "vmnic3",
  ]
}
variable "vchostname" {
  description = "vc host"
  default = "vcsa.test.local"
}