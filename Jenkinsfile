pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                sh '''
                cd myapp
                pip3 install -r requirements.txt
                '''
            }
        }

        stage('Test') {
            steps {
                sh '''
                cd myapp
                python3 hello.py
                python3 hello.py --name=Lokesh
                '''
            }
        }

        stage('Deliver') {
            steps {
                echo 'Deliver stage completed'
            }
        }
    }
}
