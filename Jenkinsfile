pipeline {
    agent any

    tools {
        maven 'maven'  // This MUST match the name in Global Tool Configuration
    }

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Test') {
            steps {
                echo "Running tests..."
                // Example: sh 'mvn test'
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying artifact..."
                // Example: sh 'scp target/*.war user@host:/path/to/deploy'
            }
        }
    }
}

