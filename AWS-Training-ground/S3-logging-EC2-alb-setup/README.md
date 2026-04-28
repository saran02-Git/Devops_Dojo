# AWS S3 Logging & EC2 Load Balancer Setup

## Overview

This project demonstrates a basic AWS infrastructure setup covering:

* Secure object storage with logging
* Compute layer using EC2 instances
* Traffic distribution using an Application Load Balancer

---

## Services Used

* Amazon S3
* AWS CloudTrail
* Amazon CloudWatch
* Amazon EC2
* Application Load Balancer (ALB)

---

## Part 1: S3 Bucket with Logging

### Configuration

* Created a private S3 bucket with public access blocked
* Uploaded objects to the bucket
* Enabled CloudTrail with S3 data events
* Integrated CloudTrail with CloudWatch Logs

### Outcome

* Object-level operations (e.g., `PutObject`) are captured
* Logs are visible in CloudWatch for monitoring and auditing

---

## Part 2: EC2 with Application Load Balancer

### Configuration

* Launched two EC2 instances (Amazon Linux)
* Installed Apache HTTP server on both instances
* Configured distinct responses on each server
* Created a target group and registered both instances
* Deployed an Application Load Balancer (internet-facing)
* Routed HTTP traffic from ALB to target group

### Outcome

* Load balancer distributes incoming requests across both instances
* High availability is achieved through multiple backend servers

---

## Architecture Flow

Client → Application Load Balancer → Target Group → EC2 Instances

---

## Verification

* S3 upload events are logged and visible in CloudWatch
* Accessing ALB DNS alternates responses between both EC2 instances

---

## Notes

* Security groups allow HTTP (80) and SSH (22) where required
* S3 bucket access is restricted (no public access)
* Default health checks are used for target group monitoring

---
