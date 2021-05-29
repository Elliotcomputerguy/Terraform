/* 
 Map - Lookup() and object type
#================================================================================================================================
A map value is a lookup table of string name = value pairs. The variables.tf contains two maps, 
one for tags, and one for sku.
#================================================================================================================================
*/

variable "tags" {
  type = map # assigned explicitly

  default = {
    Environment = "Terraform GS"
    Dept        = "Engineering"
  }
}

variable "sku" {
  default = {
    westus2 = "16.04-LTS"
    eastus  = "18.04-LTS"
  }
}
/*
#================================================================================================================================
 A variable can have a map type assigned explicitly, or it can be implicitly declared as a map by specifying a default value 
 that is a map. The above demonstrates both. A map is a collection of string values grouped together. When it is necessary to 
 group different kinds of values, for example strings, bool values, and/or numbers, you will need to use an object type.
 Let us imagine that you have a need to vary the virtual machine sku based on the region where the vm will be created. 
 Modify the virtual machine block as follows:
 #================================================================================================================================
*/
  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = lookup(var.sku, var.location) #implicitly declared for var.sku
    version   = "latest"
  }

  variable "multiple_data_types" {
    type = object({
      name = string
      num = number
    })
  }

#================================================================================================================================
# This introduces a built-in function call. The lookup function does a dynamic lookup in a map for a key. 
# The key is var.location, which specifies that the value of the location variable is the key to look up the corresponding sku.
#================================================================================================================================