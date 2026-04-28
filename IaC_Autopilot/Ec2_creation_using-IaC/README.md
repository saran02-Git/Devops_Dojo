# EC2 Multi-Region Deployment using Terraform

This project creates two EC2 instances in different AWS regions using a single Terraform configuration.

## What is done

* Created 1 EC2 instance in ap-south-1 (Mumbai)
* Created 1 EC2 instance in us-east-1 (US)
* Used Terraform to automate infrastructure instead of manual setup

## Tools used

* Amazon Web Services (EC2)
* Terraform
* AWS CLI

## Commands used

```bash
# Configure AWS credentials
aws configure

# Initialize Terraform
terraform init

# Preview infrastructure changes
terraform plan

# Create EC2 instances
terraform apply

# Destroy resources when not needed
terraform destroy
```

## Notes

* Used free-tier eligible instance types (t2.micro / t3.micro)
* Used provider alias to create resources in multiple regions
* Each region requires its own AMI

## Output

* Two EC2 instances running in different AWS regions

