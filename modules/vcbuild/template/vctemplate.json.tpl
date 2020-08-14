{
    "__version": "2.13.0",
    "__comments": "Sample template to deploy a vCenter Server Appliance with an embedded Platform Services Controller on an ESXi host.",
    "new_vcsa": {
        "esxi": {
            "hostname": "${esxihostname}",
            "username": "${esxiusername}",
            "password": "${esxipassword}",
            "deployment_network": "${deployment_network}",
            "datastore": "${datastore}"
        },
        "appliance": {
            "__comments": [
                "You must provide the 'deployment_option' key with a value, which will affect the VCSA's configuration parameters, such as the VCSA's number of vCPUs, the memory size, the storage size, and the maximum numbers of ESXi hosts and VMs which can be managed. For a list of acceptable values, run the supported deployment sizes help, i.e. vcsa-deploy --supported-deployment-sizes"
            ],
            "thin_disk_mode": ${thin_disk_mode},
            "deployment_option": "${deployment_option}",
            "name": "${vchostname}"
        },
        "network": {
            "ip_family": "${ip_family}",
            "mode": "${network_mode}",
            "ip": "${vcipaddress}",
            "dns_servers": [
                "${dnsserver}"
            ],
            "prefix": "${ipprefix}",
            "gateway": "${gateway}",
            "system_name": "${vcfqdn}"
            },
        "os": {
            "password": "${vcrootpassword}",
            "ntp_servers": "${ntp_servers}",
            "ssh_enable": ${ssh_enable}
        },
        "sso": {
            "password": "${vcssopassword}",
            "domain_name": "${sso_domain_name}"
        }
    },
    "ceip": {
        "settings": {
            "ceip_enabled": ${ceip_enabled}
        }
    }
}