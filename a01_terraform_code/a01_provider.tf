terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Env            = var.env
      Project        = var.project_name
      Automation     = var.automation
      Folder         = var.folder
      Author         = var.author
      Owner          = var.owner
      Administrators = var.administrators
      Description    = var.description
    }
  }
}
