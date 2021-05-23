
/*
Query Data with Output Variables
#================================================================================================================================
When building complex infrastructure, Terraform stores hundreds or thousands of attribute values for all your resources. 
Parsing these resources and attributes quickly becomes unsustainable for you as an operator.
Outputs are a way to tell Terraform what data is important. Terraform outputs these values after an apply operation 
and you query these values using the terraform output command.
#================================================================================================================================
#Define an output

*/
output "public_ip_address" {
  value = data.azurerm_public_ip.ip.ip_address
}
/*
This defines an output variable named public_ip_address. The name of the variable must conform to Terraform variable naming 
conventions if it is to be used as an input to other modules. The value field specifies what the value will be, 
and almost always contains one or more interpolations, since the output data is typically dynamic. 
Upon a successful apply operation, Terraform outputs the public IP address of the elastic load balancer in the configuration.

Multiple output blocks can be defined to specify multiple output variables.

You can manually type terraform output public_ip_address to also grab this information.

*/