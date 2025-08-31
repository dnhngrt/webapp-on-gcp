# 🌍 WebApp on GCP with Terraform & Docker  

[![Terraform](https://img.shields.io/badge/IaC-Terraform-7B42BC?logo=terraform)](https://www.terraform.io/)  
[![Google Cloud](https://img.shields.io/badge/Cloud-GCP-4285F4?logo=googlecloud&logoColor=white)](https://cloud.google.com/)  
[![Docker](https://img.shields.io/badge/Container-Docker-2496ED?logo=docker&logoColor=white)](https://www.docker.com/)  
[![Node.js](https://img.shields.io/badge/Runtime-Node.js-339933?logo=nodedotjs&logoColor=white)](https://nodejs.org/)  
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)  

---

## 📌 Description  
This project demonstrates **Infrastructure as Code (IaC)** using **Terraform** to provision resources on **Google Cloud Platform (GCP)**, and deploying a simple **Node.js application** with **Docker**.  

---

## 📂 Project Structure
```text
webapp-on-gcp/
│── main.tf
│── variables.tf
│── outputs.tf
│── terraform.tfvars.example
│── app/
│ ├── Dockerfile
│ ├── app.js
│ └── package.json
│── README.md
```
---

## ⚙️ Files Overview  

- **main.tf** → Main Terraform configuration for provisioning a VM and firewall rules on GCP.  
- **variables.tf** → Variable definitions (project ID, region, etc.).  
- **outputs.tf** → Outputs, e.g., VM external IP.  
- **terraform.tfvars.example** → Example variables file (copy to `terraform.tfvars`).  
- **app/** → Node.js web application with Docker configuration.  

---

## 🚀 How to Run  

1. Clone repository 
```text 
git clone https://github.com/<your-username>/webapp-on-gcp.git
cd webapp-on-gcp
```
2. Initialize Terraform
```text
terraform init
```
3. Preview changes
```text
terraform plan
```
4. Apply configuration
```text
terraform apply
```
5. Deploy the application
SSH into your VM:
```text
gcloud compute ssh webapp-vm --zone=us-central1-a
```
Clone repo & build Docker image:
```text
git clone https://github.com/<your-username>/webapp-on-gcp.git
cd webapp-on-gcp/app
docker build -t webapp:1.0 .
docker run -d -p 8080:8080 webapp:1.0
```
Access in browser:
```text
http://<vm_external_ip>:8080
```

🛠️ Technologies Used
Terraform
Google Cloud Platform (GCP)
Docker
Node.js

👨‍💻 Author
Name: Denhaningrat Alensana
LinkedIn: https://www.linkedin.com/in/dnhngrt/
GitHub: dnhngrt
