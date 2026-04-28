# AWS EC2 & EBS Volume Management

## Overview

This project demonstrates the creation and management of EC2 instances and EBS volumes, including volume attachment, snapshot creation, and volume restoration.

---

## Services Used

* Amazon EC2
* Amazon EBS

---

## Part 1: EC2 Instance Setup

### Configuration

* Launched one Linux EC2 instance (Amazon Linux)
* Launched one Windows EC2 instance
* Configured security groups to allow SSH (22), RDP (3389), and HTTP (80)
* Installed web servers:

  * Apache (Linux)
  * IIS (Windows)

### Outcome

* Both instances are accessible
* Web servers are running and serving content

---

## Part 2: EBS Volume Operations

### Configuration

* Created a 5 GB EBS volume in the same Availability Zone as the EC2 instance
* Attached the volume to the Linux EC2 instance
* Formatted the volume using ext4 filesystem
* Mounted the volume to `/data` directory

### Outcome

* Additional storage successfully attached and mounted
* Volume is accessible and ready for use

---

## Part 3: Snapshot and Volume Recreation

### Configuration

* Created a snapshot of the attached EBS volume
* Used the snapshot to create a new EBS volume

### Outcome

* Snapshot serves as a backup of the volume
* New volume successfully created from snapshot

---

## Architecture Flow

EC2 Instance → EBS Volume → Attach → Mount → Snapshot → New Volume

---

* Mounted volume is visible using `df -h`
* Snapshot creation and volume restoration completed successfully
