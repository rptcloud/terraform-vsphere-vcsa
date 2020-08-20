module "vcbuild" {
  source                     = "./modules/vcbuild"
  vcbuild_esxihostname       = var.vcbuild_esxihostname
  vcbuild_esxiusername       = var.vcbuild_esxiusername
  vcbuild_sso_domain_name    = var.vcbuild_sso_domain_name
  vcbuild_deployment_network = var.vcbuild_deployment_network
  vcbuild_thin_disk_mode     = var.vcbuild_thin_disk_mode
  vcbuild_deployment_option  = var.vcbuild_deployment_option
  vcbuild_ip_family          = var.vcbuild_ip_family
  vcbuild_network_mode       = var.vcbuild_network_mode
  vcbuild_datastore          = var.vcbuild_datastore
  vcbuild_vchostname         = var.vcbuild_vchostname
  vcbuild_vcrootpassword     = var.vcbuild_vcrootpassword
  vcbuild_vcssopassword      = var.vcbuild_vcssopassword
  vcbuild_ntp_servers        = var.vcbuild_ntp_servers
  vcbuild_ssh_enable         = var.vcbuild_ssh_enable
  vcbuild_esxipassword       = var.vcbuild_esxipassword
  vcbuild_vcip               = var.vcbuild_vcip
  vcbuild_dnsserver          = var.vcbuild_dnsserver
  vcbuild_ipprefix           = var.vcbuild_ipprefix
  vcbuild_gateway            = var.vcbuild_gateway
  vcbuild_vcfqdn             = var.vcbuild_vcfqdn
  vcbuild_ceip_enabled       = var.vcbuild_ceip_enabled
}
# module "vcconfig" {
#   source = "./modules/vcconfig"
#   providers = {
#     vsphere = vsphere.vcnew
#   }
#   depends_on                    = [module.vcbuild]
#   vcconfig_compute_cluster_name = var.vcconfig_compute_cluster_name
#   vcconfig_datacenter           = var.vcconfig_datacenter
#   vcbuild_vcssopassword         = var.vcbuild_vcssopassword
#   vcbuild_vcip                  = var.vcbuild_vcip
# }
#  output "vc_ipaddress" {
#    value = module.vcbuild.vcenter_ip_address
#  }