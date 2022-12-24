# Infrastructure Generator

Combination of Terragrunt and GitHub to generate and manage multitenant infrastructure (utilized Terraform modules inside the [Modules](https://github.com/Infrastructure-generator/Modules) repository)

![Infra-generator (1)](https://user-images.githubusercontent.com/48418580/208130113-55fb98cc-915d-4c26-a32c-8562afda79de.png)


## Prerequisites

* [Terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/install/)


## Configuration

### Terraform

For available images run:

    lxc image list <remote>

To find available remotes, you can list them using:

    lxc remote list
    
Have a look to the [Modules/README.md](https://github.com/Infrastructure-generator/Modules/blob/master/README.md) as well.


## Status

This is under active development
