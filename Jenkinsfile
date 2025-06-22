pipeline {
    agent any
   
    stages {
        stage('Checkout Code') {
            steps {
                git url: 'https://github.com/prathyusharathnamolla/DevOpsRepo.git', branch: 'main'
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def tag = "java-app:${BUILD_NUMBER}"
                    sh "docker build -t ${tag} ."
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    def tag = "java-app:${BUILD_NUMBER}"
                    sh "docker run -d -p 8888:8080 ${tag}"
                }
            }
        }
    }

    post {
        success {
            echo "✅ Build and container run succeeded."
        }
        failure {
            echo "❌ Something went wrong."
        }
    }
}
