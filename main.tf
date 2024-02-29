terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.16"
        }
    }
    required_version = ">= 1.2.0"
}

provider "aws" {
    profile = "default"
    region = "us-east-1"
}

resource "aws_instance" "app_server" {
    ami = "ami-0c7217cdde317cfec" 
    instance_type = "t2.micro"
    key_name = "fastapi_server"
    tags = {
        Name = "first_terraform_app_server"
    }
}