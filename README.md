# Infrastructure Generator

Software stack comprised of Terragrunt and GitHub to generate and manage multitenant infrastructure (utilized Terraform modules inside the [Modules](https://github.com/Infrastructure-generator/Modules) repository)

![Infra-generator (2)](https://user-images.githubusercontent.com/48418580/209435368-a81bcf68-b882-465a-82d4-a3be1434162e.png)

Each directory represents a separate tenant-environment and consists of the `config.yml` configuration files one can use to deploy and manage arbitrary infrastructure.
The current infrastructure (terraform) state is stored on a Private Terraform Cloud while the information who deployed it and the version control is tracked on this repository.

The goal is to add a simple GUI that features ACL (Access Control List) where user with sufficient privileges can easily tick and deploy the desired infrastructure without any knowledge of backend technologies. 


## Prerequisites

* [Terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/install/)


## Concept

Let's say you're part of the Lab-team and you want to deploy the infrastructure in `lab` environment. As mentioned above, the plan is to constrain users to specific environments using ACL. 
Inside the `lab/resources/config.yml` configure any amount of instance objects and their properties and open a PR to the master branch. Currently only a subset of configuration parameters is available which is planed to be extended in the future. On submission of a PR the `terragrunt plan` is called that retreives you the information if the infrastructure can be deployed. On a successful plan, PR is merged and `terragrunt apply` is called to deploy the infrastructure.


## Configuration

Since LXD is used to orchestrate intances behind-the-scenes, some knowledge about the resources itself is neccesary. At this point I suggest you to have a quick look at [LXD Docs](https://linuxcontainers.org/lxc/documentation/). In future, this organization might host a separate page to further abstract the details.

For available resource of this system have a look to the [Modules/README.md](https://github.com/Infrastructure-generator/Modules/blob/master/README.md).


## Status

This is under active development. 
