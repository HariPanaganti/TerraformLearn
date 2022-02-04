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
  region  = "ap-south-1"
}

resource "aws_instance" "jenkins_server" {
  ami           = "ami-03fa4afc89e4a8a09"
  instance_type = "t2.micro"

  tags = {
    Name = "MyJenkinsAppServerInstance"
  }
}