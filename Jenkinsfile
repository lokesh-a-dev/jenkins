pipeline {
    agent {
        docker {
            image 'jenkins-python-agent'
        }
    }

    stages {
        stage('Build') {
            steps {
                sh '''
                cd myapp
                pip install -r requirements.txt
                '''
            }
        }

        stage('Test') {
            steps {
                sh '''
                cd myapp
                python hello.py
                python hello.py --name=Lokesh
                '''
            }
        }

        stage('Deliver') {
            steps {
                echo "Delivering..."
            }
        }
    }
}
