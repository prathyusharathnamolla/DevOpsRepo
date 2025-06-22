# Java CI/CD Pipeline with Jenkins, Docker, and Kubernetes

This project demonstrates a complete CI/CD pipeline for a Java application using:

- ✅ Maven for build
- 🐳 Docker for containerization
- ⚙️ Jenkins for automation
- ☁️ (Optional) Argo CD + Helm + Kubernetes for deployment

## Build Instructions

```bash
mvn clean package
docker build -t java-app:1.0 .
docker run -p 8888:8080 java-app:1.0
