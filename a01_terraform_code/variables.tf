# Provider
variable "aws_region" {}

variable "env" {}
variable "folder" {}
variable "author" {}
variable "owner" {}
variable "administrators" {}
variable "description" {}
variable "project_name" {}
variable "automation" {}

# data "aws_ami" "amazon_linux" 
variable "ami_most_recent" {}
variable "ami_owners" {} # Canonical
variable "ami_name" {}
variable "values_ami_name" {}
variable "name_virtualization_type" {}
variable "values_virtualization_type" {}
variable "name_root_device_type" {}
variable "values_root_device_type" {}
