output "vcenter_hostname" {
  value       = module.vcbuild.vcenter_hostname
  description = "The vCenter Hostname is:"
}
output "vcenter_ip_address" {
  value       = module.vcbuild.vcenter_ip_address
  description = "The vCenter Management IP Address is:"
}
output "vcenter_username" {
  value       = module.vcbuild.vcenter_username
  description = "The vCenter SSO username is:"
}
output "vcenter_password" {
  value       = module.vcbuild.vcenter_password
  description = "The vCenter SSO password is:"
}
output "vcenter_rootpassword" {
  value       = module.vcbuild.vcenter_rootpassword
  sensitive   = true
  description = "The vCenter root password is:"
}