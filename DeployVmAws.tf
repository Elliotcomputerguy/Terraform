
/*
step [1] create a working terraform directory. 
step [2] create a terraform file.tf with code.
step [3] run terraform init to initialize the working directory.
step [4] run terraform plan.
step [5] run terraform apply.
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
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
