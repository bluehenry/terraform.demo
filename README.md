# Getting started with Terraform 
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
Get Module files
```
terraform get
```

#  Terraform remote state
The backend section configures the backend you want to use. After configuring a backend, run terraform init to setup Terraform. It should ask if you want to migrate your state to Consul. Say "yes" and Terraform will copy your state.

Now, if you run terraform apply, Terraform should state that there are no changes.

If you want to move back to local state, you can remove the backend configuration block from your configuration and run terraform init again. Terraform will once again ask if you want to migrate your state back to local.

Backends do not support inerpolation, like variables.

```
terraform init --var-file="variable_file_path" --backend-config="bucket=aws_s3_backet_name"
terraform apply (generation state file in s3)
```

# Workspaces
[Worksapces](https://www.terraform.io/docs/state/workspaces.html)
```
terraform workspace new workspace_name
terraform workspace list
terraform workspace show
terraform workspace delete workspace_name
```

# Terraform import
Some of AWS resources are importable.
```
terraform import terraform_resource_type.resource_name aws_id
terraform show
```
# Refresh
The terraform refresh command is used to reconcile the state Terraform knows about (via its state file) with the real-world infrastructure. This can be used to detect any drift from the last-known state, and to update the state file.

This does not modify infrastructure, but does modify the state file. If the state is changed, this may cause changes to occur during the next plan or apply.
```
terraform refresh
```

# Output Values
## Declaring an Output Value
```
output "security_group_id" {
  value = "${aws_security_group.my_security_group.id}"
}
```

## Command: output
The terraform output command is used to extract the value of an output variable from the state file.
```
terraform output
```
# Templates

# Data sources
