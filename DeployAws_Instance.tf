/*

https://learn.hashicorp.com/tutorials/terraform/aws-build?in=terraform/aws-get-started
https://cloud-images.ubuntu.com/locator/ec2/

step [1] create a working terraform directory. 
step [2] create a terraform file.tf with code.
step [3] run terraform init to initialize the working directory.
step [4] run terrorm fmt and terraform validate.
step [5] run terraform plan and apply.
step [6] run terraform destroy to remove.

*/
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

