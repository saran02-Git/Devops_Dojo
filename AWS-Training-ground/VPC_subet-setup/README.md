# AWS VPC Subnet Setup

## Overview

This project demonstrates the basic setup of networking in AWS by creating a Virtual Private Cloud (VPC) and dividing it into public and private subnets. It shows how to structure a secure and scalable cloud network.

---

## Objective

* Create a VPC
* Create public and private subnets
* Configure internet access for public subnet
* Understand basic AWS networking

---

## Architecture

* VPC CIDR: `10.0.0.0/16`
* Public Subnet: `10.0.1.0/24`
* Private Subnet: `10.0.2.0/24`

---

## Steps Performed

### 1. Create VPC

* Created a VPC with CIDR block `10.0.0.0/16`

### 2. Create Subnets

* Public Subnet: `10.0.1.0/24`
* Private Subnet: `10.0.2.0/24`

### 3. Internet Gateway Setup

* Created and attached Internet Gateway to the VPC

### 4. Route Table Configuration

* Created route table for public subnet
  
* Added route:

  * Destination: `0.0.0.0/0`
  * Target: Internet Gateway


## Result

* Public subnet can access the internet
* Private subnet is isolated and secure



## Key Learnings

* Basics of AWS networking
* Difference between public and private subnets
* Importance of route tables and internet gateway



## Conclusion

This task helped in understanding how cloud networks are structured and how resources are isolated using subnets in AWS.
