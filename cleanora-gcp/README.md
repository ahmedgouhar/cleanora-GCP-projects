# 🚀 GCP Static Website (Bucket + CDN + SSL + DNS)

A production-ready static website hosted on Google Cloud Platform using a fully managed serverless architecture.

---

## 🧠 Architecture

User → DNS → HTTPS → CDN → Cloud Storage Bucket

---

## ☁️ Cloud Services Used

- Cloud Storage (Static Website Hosting)
- Cloud CDN
- Cloud DNS
- SSL Certificate (Managed HTTPS)
- Load Balancer (Global HTTP(S))

---

## ⚙️ Tech Stack

- Terraform (Infrastructure as Code)
- Google Cloud Platform
- Cloud Storage
- Cloud CDN
- Nginx-free static hosting

---

## 🚀 Features

- Fully serverless architecture
- Global content delivery via CDN
- HTTPS secured website (SSL)
- Custom domain support
- Scalable and cost-efficient design

---

## 🌐 Live Demo
https://storage.googleapis.com/cleanora-static-site/index.html


---

## 🏗️ Infrastructure Modules

- storage (bucket hosting)
- cdn
- ssl certificate
- dns
- load balancer

---

## 🛠️ Deployment

```bash
terraform init
terraform apply
💡 Key Learning
Serverless web architecture on GCP
CDN performance optimization
DNS and SSL configuration
Production-grade static hosting
👨‍💻 Author

Ahmed Wael
Cloud Engineer | AWS & GCP Enthusiast
GitHub: https://github.com/ahmedgouhar

LinkedIn:https://www.linkedin.com/in/ahmed-wael-abdelaziz-ahmed-gouhar-1a679a301/
