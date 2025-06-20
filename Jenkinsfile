pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                echo "Cloning repository..."
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo "Build stage - Add your build logic here"
                // Example: sh './build.sh'
            }
        }

        stage('Test') {
            steps {
                echo "Test stage - Add your tests here"
                // Example: sh './test.sh'
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploy stage - Add your deployment steps here"
                // Example: sh './deploy.sh'
            }
        }
    }
}
