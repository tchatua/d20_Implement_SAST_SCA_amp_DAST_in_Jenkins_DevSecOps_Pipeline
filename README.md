# d20_Implement_SAST_SCA_amp_DAST_in_Jenkins_DevSecOps_Pipeline

- Download Terraform on my Windows local machine and configure PATH
- Create AWS Admin User on my AWS Account
- Install AWSCLI and authenticate with AWS
- Install IDE as a code editor
- Install Git on my local machine
- Create a Terraform Repository on my GitHub and setting up the branching and merging strategy
- Clone Terraform Repo on my local machine

## AWS Infrastructure Creation using Terraform by A Security Guru

Helpful Terraform Links:
- [Terraform Language Documentation](https://www.terraform.io/docs/language/index.html)
- [Resource: aws_security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group)
- [Resource: aws_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance)

## Step 0: Initialize Terraform
```sh
terraform init
```

## Step 1: Format Resources
```sh
terraform fmt 
```

## Step 2: Validate Resources
```sh
terraform validate
```

## Step 3: Plan Resources
```sh
terraform plan --var-file="vars/dev-us-wast-2.tfvars"
```
## Step 4: Apply Resources
```sh
terraform apply --var-file="vars/dev-us-wast-2.tfvars"
```

