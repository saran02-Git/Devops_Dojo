# EC2 Nginx Setup using Terraform

This project creates EC2 instances in two AWS regions and installs nginx automatically using Terraform.

## What is done

* Created 1 EC2 instance in ap-south-1 (Mumbai)
* Created 1 EC2 instance in us-east-1 (US)
* Installed nginx using user_data script

## Tools used

* AWS EC2
* Terraform
* AWS CLI

## Commands used

```bash
# Initialize Terraform
terraform init

# Preview changes
terraform plan

# Create EC2 instances + install nginx
terraform apply

# Destroy resources
terraform destroy
```

## Output

* Two EC2 instances running
* nginx accessible via public IP in browser

---

Automated EC2 provisioning and web server setup using Terraform.
