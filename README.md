[![Maintained by River Point Technology](https://img.shields.io/badge/maintained%20by-River%20Point%20Technology-%235849a6.svg)](https://www.riverpointtechnology.com)
# VMware VCSA Module

This repo contains a module to deploy a [VMware VCSA](https://docs.vmware.com/en/VMware-vSphere/6.7/com.vmware.vsphere.vcsa.doc/GUID-223C2821-BD98-4C7A-936B-7DBE96291BA4.html) vCenter server on a
[VMware](https://www.vmware.com/) hypervisor using [Terraform](https://www.terraform.io/).

The vCenter Server Appliance is a preconfigured Linux virtual machine, which is optimized for running VMware vCenter Server® and the associated services on Linux.

This Module uses the [VMware VCSA](https://www.vmware.com/content/dam/digitalmarketing/vmware/en/pdf/products/vCenter/vmw-datasheetvcenter.pdf) as a deployment artifact.

![Nested ESXi architecture](https://www.vmware.com/content/vmware/vmware-published-sites/us/products/vcenter-server/_jcr_content/parcontainer/image.img.jpg/1592480720032.jpg)


## How do you use this Module?

This repo has the following structure:

* **template**: Contains the *vctemplate.json.tpl* file, which is a variablized form of the VCSA 7.0 CLI install answer file *vctemplate.json*
* **root folder**: The root folder contains all of the Terraform code necessary to populate and create the the *vctemplate.json* file, leveraging the `templatefile` function.  It then executes the VCSA CLI install, using the JSON answer file, and command line options.

Prerequisites:

* **VCSA installation media**: You must have access to the installation media.  It should be extracted to a path on the local system and accessible by the user executing the Terraform code.  Adjust the path to the *vcsa-deploy* executable accordingly. 
* **vctemplate.json location**: Your user must have access to create the *vctemplate.json* file on the local filesystem.  Adjust the paths as necessary.

## What's a Module?

A Module is a canonical, reusable, best-practices definition for how to run a single piece of infrastructure, such
as a database or server cluster. Each Module is created primarily using [Terraform](https://www.terraform.io/),
includes automated tests, examples, and documentation, and is maintained both by the open source community and
companies that provide commercial support.

Instead of having to figure out the details of how to run a piece of infrastructure from scratch, you can reuse
existing code that has been proven in production. And instead of maintaining all that infrastructure code yourself,
you can leverage the work of the Module community and maintainers, and pick up infrastructure improvements through
a version number bump.



## Who maintains this Module?

This Module is maintained by [River Point Technology](http://www.riverpointtechnology.com/). If you're looking for help or commercial
support, send an email to [info@riverpointtechnology.com](mailto:info@riverpointtechnology.com?Subject=ESXi%20Module).
River Point Technology can help with:

* Setup, customization, and support for this Module.
* Modules for other types of infrastructure, such as vSphere, NSX-T, AWS, Azure, GCP and continuous integration.
* Consulting & Training on VMware, AWS, Terraform, Vault and DevOps.


## How is this Module versioned?

This Module follows the principles of [Semantic Versioning](http://semver.org/). You can find each new release,
along with the changelog, in the [Releases Page](../../releases).

During initial development, the major version will be 0 (e.g., `0.x.y`), which indicates the code does not yet have a
stable API. Once we hit `1.0.0`, we will make every effort to maintain a backwards compatible API and use the MAJOR,
MINOR, and PATCH versions on each release to indicate any incompatibilities.



## License

This code is released under the MIT License. Please see [LICENSE](https://github.com/rptcloud/terraform-vsphere-vcsa/blob/master/LICENSE.txt) for more details.

Copyright &copy; 2020 River Point Technology