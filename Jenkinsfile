pipeline {
    agent {
     docker { image 'python:3.5.1' }
     }
    stages {
        stage('build') {
            steps {
                sh 'python --version'
                sh 'echo "Installing Dependencies."'
                sh 'pip install -r requirements.txt'
                sh 'echo "Run Model"'
                sh 'python air_final.py'
            }
        }
    }
}