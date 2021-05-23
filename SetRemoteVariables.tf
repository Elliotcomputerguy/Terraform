/*
# Set remote variables
#================================================================================================================================
Terraform Cloud runs the terraform binary on an ephemeral virtual machine, which makes long runs safer and more stable. 
Because Terraform is running remotely, you must also define your variables so that Terraform Cloud can access them.

Rename terraform.tfvars to terraform.auto.tfvars. Terraform Cloud can automatically load any number of *.auto.tfvars files.

Create a file called secrets.auto.tfvars and define your user name and password by pasting them into the file. 
Be sure to keep this file secure since it contains sensitive information.
#================================================================================================================================
*/