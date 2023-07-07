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

- To make terraform accessible for your terraform provisioning you set up your credintials using either aws configure or environment variable 
__ $ export SECRET_ACCESS_KEY__ and __ $export AWS ACCESS_KEY __

- Once you have terraform.tf files for your vpc and ec2 instance. You first this command to initialize.
```
terraform init
```
Terraform:
```
terraform plan terraform plan -var-file=tfvars/dev.tfvars && terraform apply -var-file=tfvars/dev.tfvars
```

