output "vcenter_hostname" {
  value       = module.vcbuild.vcenter_hostname
  description = "The vCenter Hostname"
}
output "vcenter_ip_address" {
  value       = module.vcbuild.vcenter_ip_address
  description = "The vCenter Management IP Address"
}
output "vcenter_username" {
  value       = module.vcbuild.vcenter_username
  description = "The vCenter SSO username"
}
output "vcenter_password" {
  value       = module.vcbuild.vcenter_password
  sensitive = true
  description = "The vCenter SSO password"
}
output "vcenter_rootpassword" {
  value       = module.vcbuild.vcenter_rootpassword
  sensitive   = true
  description = "The vCenter root password"
}