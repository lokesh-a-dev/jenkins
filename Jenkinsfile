pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                docker build -t myapp-python .
                '''
            }
        }

        stage('Run App') {
            steps {
                sh '''
                docker run --rm myapp-python
                docker run --rm myapp-python python hello.py --name=Lokesh
                '''
            }
        }
    }

    post {
        always {
            sh 'docker system prune -f'
        }
    }
}
