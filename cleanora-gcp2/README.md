
# 💼 2️⃣ Project README — Scalable Compute Architecture (Network + MIG + LB + NAT)

```md
#  GCP Scalable Compute Infrastructure (Terraform)

A highly available and scalable cloud infrastructure built on Google Cloud Platform using Terraform.  
This project simulates a real production backend architecture used in modern cloud systems.

---

## 🧠 Architecture

User → Load Balancer → Managed Instance Group → VM (Auto Scaling)

Private Network Layer → NAT Gateway → Secure outbound access

---

## ☁️ Cloud Services Used

- Compute Engine (VMs)
- Instance Template
- Managed Instance Group (Auto Scaling)
- Cloud Load Balancer (HTTP/S)
- VPC Network (Public + Private Subnets)
- Firewall Rules
- Cloud NAT Gateway

---

## ⚙️ Tech Stack

- Terraform (IaC)
- Google Cloud Platform
- Linux (Debian)
- Nginx Web Server

---

## 🚀 Features

- Auto Scaling (based on CPU load)
- High Availability (multi-instance setup)
- Load Balancing traffic distribution
- Secure network segmentation (public/private)
- NAT for private subnet internet access
- Fully modular Terraform architecture

---

## 📦 Infrastructure Modules

- network (VPC + subnets)
- firewall
- instance-template
- MIG (auto scaling group)
- load balancer
- NAT gateway

---

## 🌐 Live Demo
http://35.244.141.12/

---

## 📈 Scaling Policy

- Min instances: 1  
- Max instances: 2–4  
- CPU threshold: 60–80%

---

## 🛠️ Deployment

```bash
terraform init
terraform apply
💡 Key Learning


Scalable cloud architecture design


Load balancing concepts


Auto scaling strategies


Network security (public vs private)


Production-level Terraform modularization



👨‍💻 Author
Ahmed Wael
Cloud Engineer | AWS & GCP Enthusiast
GitHub: https://github.com/ahmedgouhar
LinkedIn: https://www.linkedin.com/in/ahmed-wael-abdelaziz-ahmed-gouhar-1a679a301/
