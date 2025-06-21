pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo "Cloning repository..."
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker image..."
                sh 'docker build -t myapp-image .'
            }
        }

        stage('Run Docker Container') {
            steps {
                echo "Running Docker container..."
                sh '''
                    docker rm -f myapp-container || true
                    docker run -d --name myapp-container -p 8080:8080 myapp-image
                '''
            }
        }

        stage('Test') {
            steps {
                echo "Test stage - You can add tests here"
                // Example: sh 'curl http://localhost:8080'
            }
        }

        stage('Cleanup') {
            steps {
                echo "Optional cleanup logic"
                // Example: docker stop myapp-container
            }
        }
    }
}

