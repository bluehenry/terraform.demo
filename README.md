# Getting started with AWS 
## Installing Terraform
[Installing Terraform](https://learn.hashicorp.com/terraform/getting-started/install.html)

## Configuration
Check out main.tf

## Initialization
```
terraform init
```
The terraform init command will automatically download and install any Provider binary for the providers in use within the configuration, which in this case is just the aws provider.

## Apply Changes
```
terraform apply
```
In the same directory as the example.tf file you created, run terraform apply. 

## Inspect
```
terraform show
```
You can inspect the current state using terraform show.


## Destroy
```
terraform destroy
```
Resources can be destroyed using the terraform destroy command, which is similar to terraform apply but it behaves as if all of the resources have been removed from the configuration.