
/*
# Assign values to your variables
#================================================================================================================================
 Terraform can populate variables using values from a file. For all files which match terraform.tfvars or *.auto.tfvars 
 present in the current directory, Terraform automatically loads them to populate variables.
 To persist variable values, create a file named terraform.tfvars
#================================================================================================================================
*/
location       = "westus2"
prefix         = "tf"

#================================================================================================================================