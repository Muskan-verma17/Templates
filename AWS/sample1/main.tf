
variable "region" {
  default = "eu-west-1"
}
variable "Name" {
  default = "test"
}
variable "cidr_block" {
  description = "The CDIR block used for the VPC."
  default     = "10.0.0.0/16"
}

provider "aws" {
  region = "${var.region}"
}

resource "aws_vpc" "${var.Name}" {
  cidr_block       = "${var.cidr_block}"
  instance_tenancy = "default"

  tags = {
    Name = "${var.Name}"
  }
}




