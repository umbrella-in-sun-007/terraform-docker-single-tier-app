# Terraform Docker Provider — Single Tier Application Deployment
This project demonstrates how to automate the deployment of a single-tier web application (for example, an Nginx or Flask app) using Terraform’s Docker Provider.
It provisions Docker resources — networks, images, and containers — entirely through Infrastructure as Code (IaC).

```bash
terraform-docker-single-tier/
│
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
└── app/
    ├── Dockerfile
    └── index.html
```

