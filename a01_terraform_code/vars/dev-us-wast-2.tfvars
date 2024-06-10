# Provider
aws_region = "us-east-2"
# General variables
env   = "dev"
folder = "d05_UDM/d20_Implement_SAST_SCA_amp_DAST_in_Jenkins_DevSecOps_Pipeline/d20_Implement_SAST_SCA_amp_DAST_in_Jenkins_DevSecOps_Pipeline/a01_terraform_code"
author = "Arristide Tchatua"
owner = "Arristide Tchatua"
administrators = "tchattua@gmail.com tchatuaa@gmail.com"
description = "AWS Infrastructure Creation using Terraform Infrastructure as a code."
project_name = "dso"
automation  = "Terraform"

# data "aws_ami" "amazon_linux" 
ami_most_recent = true
ami_owners      = ["amazon"]     # Canonical
ami_name = "name"
values_ami_name =  ["amzn2-ami-kernel-5.10-hvm-2.*"]    # ["amzn2-ami-kernel-5.10-hvm-2.0.*"]
name_virtualization_type = "virtualization-type"
values_virtualization_type = ["hvm"]
name_root_device_type = "root-device-type"
values_root_device_type = ["ebs"]

