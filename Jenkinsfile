pipeline {
    agent any

    tools {
        maven 'maven' // Make sure Jenkins has this Maven version configured
    }

    stages {
        stage('Checkout Code') {
            steps {
                echo "Cloning repository..."
                checkout scm
            }
        }

        stage('Build JAR') {
            steps {
                echo "Building JAR with Maven..."
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker image..."
                sh 'docker build -t my-java-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                echo "Running Docker container..."
                sh 'docker run -d -p 8080:8080 my-java-app'
            }
        }
    }
}
