# CLOUDFORCESKY ASSESSMENT

__Summary:__
Create a Cloud Formation template that provisions a VPC with its necessary components and an EC2 instance within the VPC.

[Task Assigned](https://docs.google.com/forms/d/e/1FAIpQLSdtC3Hg_RWzavUS2Brhv7uUL64VauHYIk4G7YvPZjLcOW837Q/viewform?fbzx=2260655253816446607)

Point to note: I used Terraform instead of AWS cloud formation as my infrastructure as code tool for provisioning the networking and security for instance.


## Requirements:
- AWS Account with IAM user credentials (Access and Secret Key)
- Terraform setup
- AWS CLI

## STEPS:

- To make terraform accessible for your terraform provisioning you set up your credentials using either aws configure or environment variable 
__ $ export SECRET_ACCESS_KEY__ and __ $export AWS ACCESS_KEY __

- Once you have terraform.tf files for your VPC and ec2 instance. You first this command to initialize.
```
terraform init
```
- Terraform plan: Is used to create execution changes, in simple it shows the desired resources that will be provisioned.
- Terraform apply: This command reads the configuration files and creates the necessary resources
```
terraform plan terraform plan -var-file=tfvars/dev.tfvars && terraform apply -var-file=tfvars/dev.tfvars
```

The __tfvars file__ is used to define environment variables, which makes it easy to provide different values depending on environment, configuration and deployment
