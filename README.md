# Microservices Deployment on Kubernetes with Terraform

This repository contains configuration files and resources to deploy a microservices-based application on Kubernetes using Terraform for infrastructure management.

## Overview

### The project consists of two main microservices:

crate-frontend: A Node.js-based frontend service responsible for serving the user interface.
crate-backend: A Node.js-based backend service handling business logic and interacting with a MySQL database.

Additionally, MySQL is deployed as the database management system.
Features

Containerization: Each microservice is containerized using Docker for portability and consistency.
kubernetes Deployment: Kubernetes manifests are provided for deploying the microservices, MySQL, along with services, deployments, and horizontal pod autoscaling configurations.
Terraform Infrastructure as Code: The infrastructure is managed using Terraform, allowing for easy provisioning and management of Kubernetes resources.
Monitoring and Visualization: Prometheus and Grafana are deployed for monitoring Kubernetes cluster and application metrics.

## Prerequisites

### Ensure you have the following installed:

Docker
Kubernetes cluster (e.g., minikube, kind, or any cloud provider)
Terraform

### Usage

Clone this repository:

bash

git clone https://github.com/your-username/microservices-kubernetes.git
cd microservices-kubernetes

Modify the configuration files (if needed) to match your environment settings.

Initialize Terraform:

bash

terraform init

Apply the Terraform configuration:

bash

terraform apply

Once deployed, access the frontend service at http://<cluster-ip>:3000.

## Configuration Files

crate-frontend-deployment.yaml: Kubernetes Deployment configuration for crate-frontend service.
crate-frontend-service.yaml: Kubernetes Service configuration for crate-frontend service.
crate-backend-deployment.yaml: Kubernetes Deployment configuration for crate-backend service.
crate-backend-service.yaml: Kubernetes Service configuration for crate-backend service.
mysql-deployment.yaml: Kubernetes Deployment configuration for MySQL database.
mysql-service.yaml: Kubernetes Service configuration for MySQL database.
prometheus-service.yaml: Kubernetes Service configuration for Prometheus monitoring.
grafana-service.yaml: Kubernetes Service configuration for Grafana visualization.
crate-backend-hpa.yaml: Horizontal Pod Autoscaler configuration for crate-backend service.

This project is licensed under the MIT License.
