# d20_Implement_SAST_SCA_amp_DAST_in_Jenkins_DevSecOps_Pipeline

- Download Terraform on my Windows local machine and configure PATH
- Create AWS Admin User on my AWS Account
- Install AWSCLI and authenticate with AWS
- Install IDE as a code editor
- Install Git on my local machine
- Create a Terraform Repository on my GitHub and setting up the branching and merging strategy
- Clone Terraform Repo on my local machine

## AWS Infrastructure Creation using Terraform 

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

## Step 5: Commands to get the Jenkins admin password via command line
```sh
chmod 400 <keypair>
ssh -i <keypair> ec2-user@<public_dns>
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

```sh
mvn -version
Apache Maven 3.5.2 (138edd61fd100ec658bfa2d307c43b76940a5d7d; 2017-10-18T07:58:13Z)
Maven home: /usr/share/apache-maven
Java version: 17.0.11, vendor: Amazon.com Inc.
Java home: /usr/lib/jvm/java-17-amazon-corretto.x86_64
Default locale: en_US, platform encoding: UTF-8
OS name: "linux", version: "5.10.217-205.860.amzn2.x86_64", arch: "amd64", family: "unix"
```

## Step 6: Configure Maven in jenkins
```css
Go to > `Manage Jenkins` > `Global Tool Configuration`
    At Maven click on `Add Maven`:
    Name: maven_3_5_2 and uncheck  `Install automatically`
    MAVEN_HOME: /usr/share/apache-maven
Click on `Apply`  and `save`
```

## Step 7 Install Require plugins on Jenkins

```css
Go to > `Manage Jenkins` > `Manage Jenkins`  > `Available plugins`
Search and install:
Docker Pipeline (To build and use Docker container from Pipelines)
CloudBees AWS Credentials (To store IAM Credentials within Jenkins credentials API)
Amazon ECR(Require to push my container to Amazon ECR)
Kubernetes CLI (Require to run any kubectl commands)
```

## SonarCloud overview and its benefit
```css 
SonarCloud is a software as a service platform that helps us to keep our source code free from:
- Any kind of code quality issues, 
- Any kind of code security issues,
- To define quality gates within the SonarCloud so that we can set our standards as per the project or organization quality standards.

For an example, SonarCloud provides a default quality gate where code coverage is defined as 80%,
but suppose in our organization or in our project, we maintain 90% code coverage or unit test coverage for any code that we write.
Then we can define our custom quality gates within SonarCloud. 

SonarCloud has very similar functionality with SonarQube the only difference is that SonarQube generally we install it on our local system 
or we install it as a software on our own premises server or on cloud. 
But SonarCloud has already been installed on the cloud and has been provided as a service so that I can directly integrate my build system 
with the SonarCloud using its APIs and I'm good to go. 

I can start running quality checks on the source code that my developers are writing. 
```

Implementing the end to end DevSecOps pipeline using Jenkins to:
- Firstly see the vulnerable web application;
- See the Docker image of that vulnerable web application as well.
- Integrating SAST using Jenkins.


