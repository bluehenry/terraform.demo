# Getting started with AWS 
## Installing Terraform
[Installing Terraform](https://learn.hashicorp.com/terraform/getting-started/install.html)
```
terraform version
```

## Configuration
Check out main.tf

## Initialization
```
terraform init
```
The terraform init command will automatically download and install any Provider binary for the providers in use within the configuration, which in this case is just the aws provider.

## Plan
```
terraform plan -var-file='.\terraform.tfvars'
```

## Apply Changes
```
terraform apply
terraform apply -var-file='.\terraform.tfvars'
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

## Terraform console
The terraform console command provides an interactive console for evaluating expressions.
```
terraform console
```

#  Using Modules
 Terraform can also retrieve modules from a variety of sources, including the official Terraform Registry, private module registries or directly from Git, Mercurial, HTTP, and local files.
After adding a new module to configuration, it is necessary to run (or re-run) terraform init to obtain and install the new module's source code:
```
terraform init
```

#  Terraform Remote
The backend section configures the backend you want to use. After configuring a backend, run terraform init to setup Terraform. It should ask if you want to migrate your state to Consul. Say "yes" and Terraform will copy your state.

Now, if you run terraform apply, Terraform should state that there are no changes.

If you want to move back to local state, you can remove the backend configuration block from your configuration and run terraform init again. Terraform will once again ask if you want to migrate your state back to local.

