data "aws_ami" "amazon_linux" {
  most_recent = var.ami_most_recent
  owners      = var.ami_owners # Canonical

  filter {
    # name   = "name"
    # values = ["amzn2-ami-kernel-5.10-hvm-2.0.*"]
    name   = var.ami_name
    values = var.values_ami_name
  }

  filter {
    # name   = "virtualization-type"
    # values = ["hvm"]
    name   = var.name_virtualization_type
    values = var.values_virtualization_type
  }

  filter {
    # name   = "root-device-type"
    # values = ["ebs"]
    name   = var.name_root_device_type
    values = var.values_root_device_type
  }
}

