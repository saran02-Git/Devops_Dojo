# Jenkins CI Automation with Email Notification

## Project Overview

This project demonstrates a simple Continuous Integration (CI) pipeline using Jenkins, GitHub, and AWS EC2.

Whenever code is pushed to GitHub:

* Jenkins automatically triggers a build
* Executes a shell script
* Sends the build status via email

---

## Tech Stack

* AWS EC2
* Jenkins
* GitHub
* Shell Script

---

## Setup Steps

### 1. Jenkins Setup (EC2)

* Launch an EC2 instance
* Install Jenkins
* Open port **8080** in the security group
* Access Jenkins through a web browser

---

### 2. Create GitHub Repository

* Create a repository
* Add a simple script:

```bash
#!/bin/bash
echo "Hiii! CI Trigger Successful"
```

---

### 3. Configure Jenkins Job

* Create a **Freestyle Project**
* Add the GitHub repository URL
* Set branch:

```
*/main
```

---

### 4. Build Step

```bash
cd Jenkins-CI-task
chmod +x script.sh
./script.sh
```

---

### 5. Enable Auto Trigger

* Enable:

  * GitHub hook trigger for GITScm polling

* Add webhook in GitHub:

```
http://<EC2-PUBLIC-IP>:8080/github-webhook/
```

---

### 6. Email Notification Setup

* Configure in:
  **Manage Jenkins → Configure System**

Use:

```
SMTP Server: smtp.gmail.com
Port: 465
SSL: Enabled
```

* Add Gmail App Password
* Set System Admin Email

---

### 7. Post Build Action

* Add:

  * Editable Email Notification

* Configure:

  * Success → Recipient List
  * Add your email ID

---

## Workflow

```
GitHub Push → Jenkins Trigger → Build Execution → Email Notification
```

---

## Output

* Jenkins build is triggered automatically
* Console output displays:

```
Hiii! CI Trigger Successful
```

* Email notification is received with build status

---
## Result

* CI pipeline successfully implemented
* Automatic build triggering is working
* Email notifications are properly configured



